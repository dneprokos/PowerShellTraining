#Select object properties. Like map or select. Also multiline command was introduced
Get-PSDrive | 
Select-Object Root, Used, Free | 
Where-Object {$_.Used -gt 0 -and $_.Free -gt 0}