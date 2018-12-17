::Batch file to establish the checksum of a file
@echo off
title Extract Checksum from a file

dir /w
echo.
set /p Input=Enter the file name you wish to check:
certutil -hashfile %input% MD5
certutil -hashfile %input% SHA1
certutil -hashfile %input% SHA256
pause
