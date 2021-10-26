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

#To create a multi-dimensional array
$MultiArray = @(("cats","dogs","ravens"),(40,50,60))

PowerShell will automatically number the array elements on an X-Y grid starting at 0.

 	  0	   1     2
0	 cats	dogs	ravens
1	  40	 50	  60

#To access the value as per array order
PS C:\WINDOWS\system32> $MultiArray[1][2]
60

#Create an empty hashtable
$ageList = @{}

#Declare variables
$key = 'Kevin'
$value = 36

#Add variables into hashtable
$ageList.add( $key, $value )

#Add key and values into hashtable
$ageList.add( 'Alex', 9 )

#To view the output
PS C:\WINDOWS\system32> $ageList

Name                           Value                                                                                                                                                          
----                           -----                                                                                                                                                          
Kevin                          36                                                                                                                                                             
Alex                           9 



