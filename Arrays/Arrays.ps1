#Named array
$namedArray = 64,"Hello",3.5,"World"
$namedArray

#use explicit array cast syntax
$explicitArray = @(64,"Hello",3.5,"World")
Write-Output "`n"
$explicitArray


#Range operator
$rangeArray = (1..7)
Write-Output "`n"
$rangeArray

#Strongly type array
[int[]]$intArray = 12,64,8,64,12
Write-Output "`n"
$intArray

#Empty array
$emptyArray = @()

#Add values to array
$emptyArray += 'Kyiv'
$emptyArray += 1
Write-Output "`n"
$emptyArray

#get item from array
Write-Output "`n"
$emptyArray[0]
$emptyArray[-1] #Last element of array