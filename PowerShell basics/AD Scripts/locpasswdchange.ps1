#This script will be useful to change local admin password in multiple servers on the same network
#Create a text file and input server names one by one and assign to variable $computers
$computers = Get-Content -path "C:\PSScript\hosts.txt"

#Prompt user to enter the new passwod as securestring
$password = Read-Host -prompt "Enter new password for user" -assecurestring

#Using powerbit method to convert secure string password to plain text before we pass on to destination servers
$decodedpassword = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($password))

#Foreach loop to iterate all the servers in the list
#Convert computer name to upper case
#To check whether the server is online
#Declare the status
#Status of the output
foreach ($Computer in $Computers) {
$Computer = $Computer.toupper()
$Isonline = "OFFLINE"
$Status = "SUCCESS"
$StatsError ="Failed"

#Ping server by one count and check the status whether it is online or offline
if((Test-Connection -ComputerName $Computer -count 1 -ErrorAction 0)) {
$Isonline = "ONLINE"
} else { $StatsError= "`t$Computer is OFFLINE" }

#Try to change the password if the server is online
try {
$account = [ADSI]("WinNT://$Computer/ITOPS,user")
$account.psbase.invoke("setpassword",$decodedpassword)
$StatsError="Administrator Password changed successfully"
}

#Else print the status failed
catch {
$status = "FAILED"
$StatsError="$_"
}

#Creating array hash table 
$obj = New-Object -TypeName PSObject -Property @{
ComputerName = $Computer
IsOnline = $Isonline
PasswordChangeStatus = $Status
DetailedStatus=$StatsError
}

#Pipe input the $obj to print selected parameters and export into CSV
$obj | Select ComputerName, IsOnline, PasswordChangeStatus,DetailedStatus
$obj | Export-Csv -Append -Path "C:\PSScript\hosts.csv"
}
