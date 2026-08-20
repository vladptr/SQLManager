using System.Diagnostics;
using System.Net.Http;
using Microsoft.Web.WebView2.Core;
using Microsoft.Web.WebView2.WinForms;

namespace SQLManager.Desktop;

public sealed class MainForm : Form
{
    private readonly WebView2 _webView;
    private readonly Label _status;
    private Process? _serverProcess;
    private readonly HttpClient _httpClient = new() { Timeout = TimeSpan.FromSeconds(2) };
    private bool _closing;

    public MainForm()
    {
        Text = "SQLManager";
        StartPosition = FormStartPosition.CenterScreen;
        MinimumSize = new Size(1100, 700);
        Size = new Size(1440, 920);

        _status = new Label
        {
            Dock = DockStyle.Top,
            Height = 28,
            TextAlign = ContentAlignment.MiddleLeft,
            Padding = new Padding(10, 0, 0, 0),
            Text = "Starting SQLManager..."
        };

        _webView = new WebView2
        {
            Dock = DockStyle.Fill,
            CreationProperties = new CoreWebView2CreationProperties
            {
                AdditionalBrowserArguments = "--disable-background-networking --disable-component-update --renderer-process-limit=2"
            }
        };

        Controls.Add(_webView);
        Controls.Add(_status);

        Load += OnLoadAsync;
        FormClosing += OnFormClosing;
    }

    private async void OnLoadAsync(object? sender, EventArgs e)
    {
        try
        {
            var root = FindProjectRoot();
            var serverScript = Path.Combine(root, "server", "sqlmanager.ps1");
            if (!File.Exists(serverScript))
            {
                throw new FileNotFoundException("Missing server script: " + serverScript);
            }

            StartServer(serverScript, root);
            _status.Text = "Waiting for local server...";
            await WaitForServerAsync("http://127.0.0.1:8787/");

            _status.Text = "Initializing app window...";
            await _webView.EnsureCoreWebView2Async();
            _webView.CoreWebView2.Settings.AreDefaultContextMenusEnabled = false;
            _webView.CoreWebView2.Settings.AreBrowserAcceleratorKeysEnabled = true;
            _webView.Source = new Uri("http://127.0.0.1:8787/?app=1");
            _status.Visible = false;
        }
        catch (Exception ex)
        {
            _status.Text = "Startup failed: " + ex.Message;
            MessageBox.Show(this, ex.Message, "SQLManager", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }
    }

    private static string FindProjectRoot()
    {
        var dir = new DirectoryInfo(AppContext.BaseDirectory);
        while (dir is not null)
        {
            if (File.Exists(Path.Combine(dir.FullName, "server", "sqlmanager.ps1")) &&
                File.Exists(Path.Combine(dir.FullName, "index.html")))
            {
                return dir.FullName;
            }
            dir = dir.Parent;
        }
        throw new DirectoryNotFoundException("Could not locate SQLManager project root.");
    }

    private void StartServer(string serverScript, string workingDirectory)
    {
        var psi = new ProcessStartInfo
        {
            FileName = "powershell.exe",
            WorkingDirectory = workingDirectory,
            UseShellExecute = false,
            CreateNoWindow = true
        };
        psi.ArgumentList.Add("-NoProfile");
        psi.ArgumentList.Add("-ExecutionPolicy");
        psi.ArgumentList.Add("Bypass");
        psi.ArgumentList.Add("-File");
        psi.ArgumentList.Add(serverScript);
        psi.ArgumentList.Add("-NoBrowser");

        _serverProcess = Process.Start(psi) ?? throw new InvalidOperationException("Failed to start local server.");
    }

    private async Task WaitForServerAsync(string url)
    {
        for (var i = 0; i < 40; i++)
        {
            if (_serverProcess is { HasExited: true })
            {
                throw new InvalidOperationException("Local SQLManager server exited during startup.");
            }

            try
            {
                using var response = await _httpClient.GetAsync(url);
                if ((int)response.StatusCode is >= 200 and < 500) return;
            }
            catch
            {
                // Retry while starting.
            }

            await Task.Delay(500);
        }

        throw new TimeoutException("SQLManager server is not responding at http://127.0.0.1:8787/");
    }

    private void OnFormClosing(object? sender, FormClosingEventArgs e)
    {
        if (_closing) return;
        _closing = true;

        try
        {
            _httpClient.Dispose();
        }
        catch
        {
            // Ignore.
        }

        try
        {
            if (_serverProcess is { HasExited: false })
            {
                _serverProcess.Kill(entireProcessTree: true);
            }
        }
        catch
        {
            // Ignore shutdown issues.
        }
    }
}
