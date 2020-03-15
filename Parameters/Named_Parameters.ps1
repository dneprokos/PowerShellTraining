param ([Parameter(Mandatory)]$userName, [Parameter(Mandatory)][SecureString] $password, $hostname='localhost', [int]$port = 8080)
Write-Output "UserName: $userName, Password: $password, HostName: $hostname, Port: $port"


