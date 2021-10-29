#To find last logon users / service accounts in an AD
#Replace xxx with your organization values. For Example "OU=users,DC=Contoso,DC=Com"
Get-ADUser -Filter {enabled -eq $true} -Properties lastlogon -SearchBase "OU=xxx,DC=xxx,DC=xxx" | Select-Object Name, lastlogon
#The output of the above command 
