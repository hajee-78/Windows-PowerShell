#Declaring array of numbers 
$myarray=14..8

#To view the output
PS C:\WINDOWS\system32> $myarray
14
13
12
11
10
9
8

#To confirm array value
PS C:\WINDOWS\system32> $myarray.contains(10)
True

#To measure the length of array
PS C:\WINDOWS\system32> $myarray.Length
7

#To count the numbers in array
PS C:\WINDOWS\system32> $myarray.Count
7

#Declaring array of characters
$myarray="abc", "xyz", "pqr", "dcb"

#To view the output
PS C:\WINDOWS\system32> $myarray
abc
xyz
pqr
dcb

#To write the array lenght
PS C:\WINDOWS\system32> Write-Host "Length of Array is" $myarray.Length
Length of Array is 4

#To get the data type
PS C:\WINDOWS\system32> $myarray.GetType()

IsPublic IsSerial Name                                     BaseType                                                                                                                           
-------- -------- ----                                     --------                                                                                                                           
True     True     Object[]                                 System.Array        


