$prefix = "http://localhost:8000/"
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add($prefix)
$listener.Start()
Write-Output "Serving $prefix. Press Ctrl+C to stop."
while ($listener.IsListening) {
    $context = $listener.GetContext()
    $req = $context.Request
    $path = $req.Url.AbsolutePath.TrimStart('/')
    if ([string]::IsNullOrEmpty($path)) { $path = "swagger-preview.html" }
    $file = Join-Path (Get-Location) $path
    if (Test-Path $file) {
        $bytes = [System.IO.File]::ReadAllBytes($file)
        $context.Response.ContentLength64 = $bytes.Length
        $ext = [System.IO.Path]::GetExtension($file).ToLower()
        $mime = switch ($ext) {
            ".html" {"text/html"}
            ".yaml" {"application/x-yaml"}
            ".yml" {"application/x-yaml"}
            ".json" {"application/json"}
            ".css" {"text/css"}
            ".js" {"application/javascript"}
            default {"application/octet-stream"}
        }
        $context.Response.ContentType = $mime
        $context.Response.OutputStream.Write($bytes,0,$bytes.Length)
        $context.Response.OutputStream.Close()
    } else {
        $context.Response.StatusCode = 404
        $context.Response.OutputStream.Close()
    }
}
