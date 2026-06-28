$content = [System.IO.File]::ReadAllText("index.html", [System.Text.Encoding]::UTF8)
[System.IO.File]::WriteAllText("index.html", $content, [System.Text.Encoding]::UTF8)
Write-Host "Done!"