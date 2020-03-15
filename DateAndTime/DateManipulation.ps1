#Shows the long version of the date
Get-Date

#Add date to variable
$date=Get-Date
#Select all date properties
$date | select *
#Get Day of the Wekk property
$date.DayOfWeek
#Get Date time
$date.DateTime


