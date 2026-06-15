# Labproof Deployment Script to Hostinger
# This script uploads your built site (dist/ folder) to Hostinger via FTP

# Get the directory where this script is located
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$distFolder = Join-Path $scriptDir "dist"

# Check if dist folder exists
if (-not (Test-Path $distFolder)) {
    Write-Host "ERROR: dist/ folder not found. Run 'npm run build' first." -ForegroundColor Red
    exit 1
}

# FTP Configuration (update these with your Hostinger credentials)
$ftpHost = "labproof.tech"
$ftpUser = Read-Host "Enter your Hostinger FTP username"
$ftpPass = Read-Host "Enter your Hostinger FTP password" -AsSecureString
$ftpPass = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToCoTaskMemUnicode($ftpPass))

$remoteFolder = "/public_html"

# Function to upload files via FTP
function Upload-FilesViaFTP {
    param(
        [string]$FtpServer,
        [string]$FtpUser,
        [string]$FtpPassword,
        [string]$LocalFolder,
        [string]$RemotePath
    )

    Write-Host "`nConnecting to $FtpServer..." -ForegroundColor Cyan

    # Create FTP request
    $uri = "ftp://$FtpServer$RemotePath"
    $ftpRequest = [System.Net.FtpWebRequest]::Create($uri)
    $ftpRequest.Credentials = New-Object System.Net.NetworkCredential($FtpUser, $FtpPassword)
    $ftpRequest.UseBinary = $true
    $ftpRequest.KeepAlive = $true

    # Get all files in dist folder recursively
    $files = Get-ChildItem -Path $LocalFolder -Recurse -File

    $totalFiles = $files.Count
    $uploadedFiles = 0

    foreach ($file in $files) {
        $relativePath = $file.FullName.Substring($LocalFolder.Length).Replace("\", "/").TrimStart("/")
        $remoteUri = "ftp://$FtpServer$RemotePath/$relativePath"

        # Create directories if they don't exist
        $remoteDirUri = Split-Path -Parent $remoteUri
        $remoteDirUri = $remoteDirUri.Replace("\", "/")

        try {
            Write-Host "Uploading: $relativePath" -ForegroundColor Green

            # Create upload request
            $uploadRequest = [System.Net.FtpWebRequest]::Create($remoteUri)
            $uploadRequest.Credentials = New-Object System.Net.NetworkCredential($FtpUser, $FtpPassword)
            $uploadRequest.UseBinary = $true
            $uploadRequest.Method = [System.Net.WebRequestMethods+Ftp]::UploadFile

            # Upload file
            $fileStream = [System.IO.File]::OpenRead($file.FullName)
            $ftpStream = $uploadRequest.GetRequestStream()
            $fileStream.CopyTo($ftpStream)
            $ftpStream.Close()
            $fileStream.Close()

            $uploadedFiles++
            $progress = [math]::Round(($uploadedFiles / $totalFiles) * 100)
            Write-Host "Progress: $uploadedFiles / $totalFiles ($progress%)" -ForegroundColor Yellow
        }
        catch {
            Write-Host "ERROR uploading $relativePath : $_" -ForegroundColor Red
        }
    }

    Write-Host "`n✅ Upload complete! $uploadedFiles / $totalFiles files uploaded." -ForegroundColor Green
    Write-Host "Visit https://labproof.tech to see your live site!" -ForegroundColor Cyan
}

# Start upload
Upload-FilesViaFTP -FtpServer $ftpHost -FtpUser $ftpUser -FtpPassword $ftpPass -LocalFolder $distFolder -RemotePath $remoteFolder
