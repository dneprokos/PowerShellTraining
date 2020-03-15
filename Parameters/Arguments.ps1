$userName = $args[0]
$password = $args[1]
$securePassword = $password | ConvertTo-SecureString -AsPlainText -Force

Write-Output "User name is $userName and password is $password, but secure password is $securePassword"


