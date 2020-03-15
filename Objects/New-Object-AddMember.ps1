param ([Parameter(Mandatory)]$userName, [Parameter(Mandatory)][SecureString] $password, $hostname='localhost', [int]$port = 8080)

$dataObject = New-Object -TypeName psobject 

$dataObject | Add-Member -MemberType NoteProperty -Name UserName -Value $userName
$dataObject | Add-Member -MemberType NoteProperty -Name Password -Value $password
$dataObject | Add-Member -MemberType NoteProperty -Name Hostname -Value $hostname
$dataObject | Add-Member -MemberType NoteProperty -Name Port -Value $port

$dataObject.UserName