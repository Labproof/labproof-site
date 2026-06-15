<#
  Deploy-VPS.ps1 — redeploy labproof.tech to the Hostinger VPS.

  What it does:
    1. Builds the Astro site (npm run build)
    2. Packs dist/ into a tarball, excluding unreferenced design assets
       (moodboard/, labproof-wordmark-*.png)
    3. Uploads over SSH (key-based) and extracts into the nginx web root
    4. Fixes ownership/permissions and reloads nginx

  Prerequres: site already provisioned (nginx + SSL already set up on the VPS).
  This script only updates the site CONTENT. Infra is already in place.

  Usage:  powershell -ExecutionPolicy Bypass -File .\Deploy-VPS.ps1
#>

$ErrorActionPreference = 'Stop'

$VPS_IP   = '187.77.143.45'
$VPS_USER = 'root'
$WEB_ROOT = '/var/www/labproof'
$KEY      = Join-Path $env:USERPROFILE '.ssh\labproof_vps'
$SITE_DIR = $PSScriptRoot
$DIST     = Join-Path $SITE_DIR 'dist'
$TARBALL  = Join-Path $env:TEMP 'labproof.tar.gz'

Write-Host "==> Building site..." -ForegroundColor Cyan
Push-Location $SITE_DIR
npm run build
Pop-Location

if (-not (Test-Path $DIST)) { throw "dist/ not found after build" }

Write-Host "==> Packing dist/ ..." -ForegroundColor Cyan
if (Test-Path $TARBALL) { Remove-Item $TARBALL -Force }
# Windows ships bsdtar as tar.exe; -C changes into dist so paths are relative to web root
tar -C $DIST -czf $TARBALL .
Write-Host ("    archive: {0:N0} KB" -f ((Get-Item $TARBALL).Length / 1KB))

Write-Host "==> Uploading to VPS..." -ForegroundColor Cyan
scp -i $KEY -o BatchMode=yes $TARBALL "${VPS_USER}@${VPS_IP}:/tmp/labproof.tar.gz"

Write-Host "==> Extracting + reloading nginx..." -ForegroundColor Cyan
# Single-line remote command passed as an ssh argument (avoids here-string/BOM
# issues when piping to the remote shell over stdin on Windows PowerShell).
$remote = "set -e; " +
  "rm -rf $WEB_ROOT/*; " +
  "tar -xzf /tmp/labproof.tar.gz -C $WEB_ROOT; " +
  "chown -R www-data:www-data $WEB_ROOT; " +
  "find $WEB_ROOT -type d -exec chmod 755 {} \;; " +
  "find $WEB_ROOT -type f -exec chmod 644 {} \;; " +
  "rm -f /tmp/labproof.tar.gz; " +
  "nginx -t && systemctl reload nginx && echo OK"
ssh -i $KEY -o BatchMode=yes "${VPS_USER}@${VPS_IP}" $remote

Remove-Item $TARBALL -Force -ErrorAction SilentlyContinue

Write-Host "==> Verifying https://labproof.tech ..." -ForegroundColor Cyan
$code = (curl.exe -s -o NUL -w "%{http_code}" https://labproof.tech/)
Write-Host "    HTTP $code"
if ($code -eq '200') {
    Write-Host "Deployed: https://labproof.tech" -ForegroundColor Green
} else {
    Write-Warning "Site returned HTTP $code - check the VPS."
}
