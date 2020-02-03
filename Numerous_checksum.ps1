#PS script to help to confirm the checksum (multiple) of a file.
clear
""
""
Write-Host -NoNewLine "Have you validated the source file and of the checksum?"
""
""
$filename = Read-Host -Prompt 'Full path and name of the file to be checked'
get-filehash $filename -Algorithm MD5 | Ft -autosize -wrap
get-filehash $filename -Algorithm SHA1 | Ft -autosize -wrap
get-filehash $filename -Algorithm SHA256 | Ft -autosize -wrap
get-filehash $filename -Algorithm SHA512 | Ft -autosize -wrap
