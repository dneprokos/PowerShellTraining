#Prints Free space foreach drive of type file system. Alos converts Free value to gigabites and prints it with green color
#If you want to manipulate with data you need to put it to parentheses. Like wi did with gigabite translation
Write-Host "Simple loop example:`n"
Get-PSDrive -PSProvider FileSystem | 
ForEach-Object { Write-Host "Free space for" $_.Root "is" ("{0:N2}" -f ($_.Free/1gb)) "GB" -ForegroundColor Green }

Write-Host "`nComplex loop example:`n"


Get-PSDrive -PSProvider FileSystem | 
ForEach-Object { $c = 0; Write-Host "This step only runs once" } {$c = $c + 1; Write-Host "This section runs once foreach object
in the pipe" $c} {Write-Host "This step runs when everytjing is done. The value of c variable is" $c }