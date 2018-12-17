$filename = Read-Host -Prompt 'Input the file to be checked'
$Algorith = Read-Host -Prompt 'MD5, SHA256 or SHA 512?'
get-filehash $filename -Algorithm $Algorith | Ft -autosize -wrap
