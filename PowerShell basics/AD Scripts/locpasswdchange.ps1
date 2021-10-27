$computers = Get-Content -path "C:\PSScript\hosts.txt"
$password = Read-Host -prompt "Enter new password for user" -assecurestring
$decodedpassword = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($password))
foreach ($Computer in $Computers) {
$Computer = $Computer.toupper()
$Isonline = "OFFLINE"
$Status = "SUCCESS"
$StatsError ="Failed"
if((Test-Connection -ComputerName $Computer -count 1 -ErrorAction 0)) {
$Isonline = "ONLINE"
} else { $StatsError= "`t$Computer is OFFLINE" }

try {
$account = [ADSI]("WinNT://$Computer/ITOPS,user")
$account.psbase.invoke("setpassword",$decodedpassword)
$StatsError="Administrator Password changed successfully"
}
catch {
$status = "FAILED"
$StatsError="$_"
}

$obj = New-Object -TypeName PSObject -Property @{
ComputerName = $Computer
IsOnline = $Isonline
PasswordChangeStatus = $Status
DetailedStatus=$StatsError
}

$obj | Select ComputerName, IsOnline, PasswordChangeStatus,DetailedStatus
$obj | Export-Csv -Append -Path "C:\PSScript\hosts.csv"
}
