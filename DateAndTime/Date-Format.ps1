#Create new date
$newDate = Get-Date -Date "1986-09-19 13:15:00Z"
$newDate

#Date format
Get-Date $newDate -Format MMMM #September
Get-Date $newDate -Format MM #09
Get-Date $newDate -Format dddd #Friday
Get-Date $newDate -Format dd #19
Get-Date $newDate -Format d #9/19/1986
Get-Date $newDate -Format "MMMM dd, yyyy" #September 19, 1986


#-UFormat
Get-Date $newDate -UFormat %j #Day of the year
Get-Date $newDate -UFormat %y #Week of the year