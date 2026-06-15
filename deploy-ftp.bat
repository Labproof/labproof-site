@echo off
REM Labproof FTP Deployment Script
REM Upload dist/ folder to Hostinger public_html/

REM Get FTP credentials from hPanel (Hosting > FTP)
set FTP_HOST=labproof.tech
set FTP_USER=your-ftp-username
set FTP_PASS=your-ftp-password

REM Create FTP script
(
  echo open %FTP_HOST%
  echo %FTP_USER%
  echo %FTP_PASS%
  echo binary
  echo cd public_html
  echo prompt off
  echo mput dist\*
  echo bye
) > ftp_commands.txt

REM Execute FTP
ftp -s:ftp_commands.txt

REM Clean up
del ftp_commands.txt

echo.
echo ===================================
echo Upload complete!
echo Visit https://labproof.tech
echo ===================================
pause
