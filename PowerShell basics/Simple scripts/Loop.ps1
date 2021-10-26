#Foreach loop example
$values = 1..10
foreach ($number in $values)
{ Write-Host $number }
1
2
3
4
5
6
7
8
9
10

#For loop example
for($i=1; $i -lt 10; $i++)
{Write-Host $i}
1
2
3
4
5
6
7
8
9

#If....elseif...else example
if (12 -gt 13)
{ Write-Host "Yes" }
elseif (40 -lt 30)
{ Write-Host "This time, Yes" }
else
{ Write-Host "Terrible Maths" }
Terrible Maths

