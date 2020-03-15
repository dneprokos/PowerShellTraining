#Get ps drives where "Free" property greater than 1 ($_ represnets current object in the pipe)
Get-PSDrive | Where-Object {$_.Free -gt 1}

Write-Output "`n"

#Alias examples 
Get-PSDrive | ?{$_.Free -gt 1}

