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

#If....elseif...else loop example
if (12 -gt 13)
{ Write-Host "Yes" }
elseif (40 -lt 30)
{ Write-Host "This time, Yes" }
else
{ Write-Host "Terrible Maths" }
Terrible Maths

#While loop example
$numbers = 1
while ($numbers -lt 10)
{
 $numbers = $numbers + 2
 Write-Host "The current value of the variable is $numbers "
}
The current value of the variable is 3 
The current value of the variable is 5 
The current value of the variable is 7 
The current value of the variable is 9 
The current value of the variable is 11

#Do...While loop example
$numbers = 0
Do
{
$numbers = $numbers + 1
write-host "The current value of the variable is $numbers."
}
while ($numbers -lt 6)
The current value of the variable is 1.
The current value of the variable is 2.
The current value of the variable is 3.
The current value of the variable is 4.
The current value of the variable is 5.
The current value of the variable is 6.

#Do...until loop example
$i=1
Do {
    Write-Host "The number is $i"
    $i++
    }
Until ($i -ge 11)
The number is 1
The number is 2
The number is 3
The number is 4
The number is 5
The number is 6
The number is 7
The number is 8
The number is 9
The number is 10

