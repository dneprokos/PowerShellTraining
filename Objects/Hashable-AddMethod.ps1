$adminPasswordStatus = $null
$thermalState        = $null
$osInfo              = Get-CimInstance Win32_OperatingSystem
$computerInfo        = Get-CimInstance Win32_ComputerSystem
$diskInfo            = Get-CimInstance Win32_LogicalDisk

Switch ($computerInfo.AdminPasswordStatus) {

    0 {$adminPasswordStatus = 'Disabled'}
     
    1 {$adminPasswordStatus = 'Enabled'}

    2 {$adminPasswordStatus = 'Not Implemented'} 

    3 {$adminPasswordStatus = 'Unknown'}

    Default {$adminPasswordStatus = 'Unable to determine'}

}

Switch ($computerInfo.ThermalState) {

    1 {$thermalState = 'Other'}

    2 {$thermalState = 'Unknown'}

    3 {$thermalState = 'Safe'}

    4 {$thermalState = 'Warning'} 

    5 {$thermalState = 'Critical'}

    6 {$thermalState = 'Non-recoverable'}

    Default {$thermalState = 'Unable to determine'}

}

[hashtable]$objectProperty = @{}

$objectProperty.Add('ComputerName',$computerInfo.Name)
$objectProperty.Add('OS',$osInfo.Caption)
$objectProperty.Add('OS Version',$("$($osInfo.Version) Build $($osInfo.BuildNumber)"))
$objectProperty.Add('Domain',$computerInfo.Domain)
$objectProperty.Add('Workgroup',$computerInfo.Workgroup)
$objectProperty.Add('DomainJoined',$computerInfo.PartOfDomain)
$ObjectProperty.Add('Disks',$diskInfo)
$objectProperty.Add('AdminPasswordStatus',$adminPasswordStatus)
$objectProperty.Add('ThermalState',$thermalState)

$ourObject = New-Object -TypeName psobject -Property $objectProperty

$ourObject