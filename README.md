# hashFile_val
Crawl a target folder and generate .hash files for each matching file

Instead of running some cludge loop you got from the internet, let's use the Powershell Get-FileHash cmdlet.
In the script we will get file contents matching file extension criteria and a path, to then make a same-named file but with .hash on the end and the SHA256 value.
