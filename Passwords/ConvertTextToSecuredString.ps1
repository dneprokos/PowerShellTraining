$PlainPassword = "P@ssw0rd"
$SecurePassword = $PlainPassword | ConvertTo-SecureString -AsPlainText -Force

Write-Output "Plain password is $PlainPassword" 
Write-Output "Secured password is $SecurePassword" 