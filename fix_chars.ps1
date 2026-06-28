$content = [System.IO.File]::ReadAllText("index.html", [System.Text.Encoding]::UTF8)

$content = $content.Replace("â€"", [char]8212)
$content = $content.Replace("â€™", [char]8217)
$content = $content.Replace("â€œ", [char]8220)
$content = $content.Replace("â€", [char]8221)
$content = $content.Replace("Â©", [char]169)
$content = $content.Replace("Â·", [char]183)
$content = $content.Replace("â†'", [char]8594)
$content = $content.Replace("â—ˆ", [char]9672)
$content = $content.Replace("â˜…", [char]9733)

[System.IO.File]::WriteAllText("index.html", $content, [System.Text.Encoding]::UTF8)
Write-Host "Done!"