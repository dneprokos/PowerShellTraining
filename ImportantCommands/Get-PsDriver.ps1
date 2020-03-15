Write-Output "All drives"
#Gets all drives
Get-PSDrive

#Empty line
write-host "`n"


Write-Output "File System only drives"
#Gets only filesystem drives
Get-PSDrive -PSProvider FileSystem