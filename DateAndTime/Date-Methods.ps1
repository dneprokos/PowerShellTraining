#Add date to variable
$date=Get-Date

#Convert date to short date
$date.ToShortDateString()

#Get two months earlier than today date
(Get-Date).AddMonths(-2);