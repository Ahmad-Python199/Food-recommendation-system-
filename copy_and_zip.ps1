# Sync files from E:\Food to C:\Users\User\Downloads\Food_project, excluding .env and zip files
$destDir = "C:\Users\User\Downloads\Food_project"
if (!(Test-Path $destDir)) {
    New-Item -ItemType Directory -Path $destDir -Force
}

Get-ChildItem -Path "E:\Food" -File | Where-Object { $_.Name -ne '.env' -and $_.Name -notlike '*.zip' } | Copy-Item -Destination $destDir -Force

# Create ZIP archive from C:\Users\User\Downloads\Food_project at C:\Users\User\Downloads\Food_project.zip
$zipPath = "C:\Users\User\Downloads\Food_project.zip"
$sourceDir = "C:\Users\User\Downloads\Food_project"

if (Test-Path $zipPath) {
    Remove-Item $zipPath -Force
}

Add-Type -AssemblyName System.IO.Compression

$zipStream = New-Object System.IO.FileStream($zipPath, [System.IO.FileMode]::Create)
$zipArchive = New-Object System.IO.Compression.ZipArchive($zipStream, [System.IO.Compression.ZipArchiveMode]::Create)

$files = Get-ChildItem -Path $sourceDir -File
foreach ($file in $files) {
    $name = $file.Name
    # Exclude .env and any zip files from zip contents
    if ($name -eq ".env" -or $name.EndsWith(".zip") -or $name -eq "copy_and_zip.ps1") {
        continue
    }
    
    $fileStream = New-Object System.IO.FileStream($file.FullName, [System.IO.FileMode]::Open, [System.IO.FileAccess]::Read, [System.IO.FileShare]::ReadWrite)
    try {
        $zipEntry = $zipArchive.CreateEntry($name)
        $entryStream = $zipEntry.Open()
        try {
            $fileStream.CopyTo($entryStream)
        } finally {
            $entryStream.Close()
        }
    } finally {
        $fileStream.Close()
    }
}

$zipArchive.Dispose()
$zipStream.Dispose()
Write-Output "Files synced and ZIP created successfully at $zipPath"
