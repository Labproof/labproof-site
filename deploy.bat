@echo off
REM Simple Hostinger FTP Deployment
REM Usage: deploy.bat [username] [password]

setlocal enabledelayedexpansion

if "%1"=="" (
  echo Enter FTP Credentials from hPanel ^(Hosting ^> FTP^)
  set /p FTP_USER="FTP Username: "
  set /p FTP_PASS="FTP Password: "
) else (
  set FTP_USER=%1
  set FTP_PASS=%2
)

echo.
echo Uploading to labproof.tech...
echo.

REM Create FTP commands file
(
  echo open labproof.tech
  echo %FTP_USER%
  echo %FTP_PASS%
  echo binary
  echo cd public_html
  echo prompt off
  for /r "dist" %%F in (*) do (
    set "FILE=%%F"
    set "FILE=!FILE:C:\Work\Active Projects\labproof-site\dist\=!"
    echo put "%%F" "!FILE:\=/!"
  )
  echo quit
) > ftp_upload.txt

REM Run FTP
ftp -s:ftp_upload.txt

REM Cleanup
del ftp_upload.txt

echo.
echo ========================================
echo Upload Complete!
echo Visit: https://labproof.tech
echo ========================================
pause
