#We need to create 4 CSV files namely HR, IT, Marketing and Sales with basic AD user attributes
#Make sure this script file and CSV files are in same directory
#Simple function declaration 
Function import-hhhnetusers {
    param(
        [String] $OUName)
    #Import CSV files (HR, IT, Marketing and Sales)
    $Import = "C:\PSScript\"+$OUName+".csv"
    
    #Declaring location in AD users and groups
    $Location = "OU="+$OUName+",DC=hhhnet,DC=local"
    
    #Creating new AD OU as per input parameter $OUName
    New-ADOrganizationalUnit -Name $OUName -path "DC=hhhnet,DC=local" -ProtectedFromAccidentalDeletion $false
    
    #Declaring password as secure text
    $Password = "_L0c@ladMi5" | ConvertTo-SecureString -AsPlainText -Force
    
    #Import CSV files and create users as declared in CSV files
    Import-Csv $Import | New-ADUser -Path $Location -AccountPassword $Password -Enabled $true
    }
    
    #Calling function by each parameter name 
    import-hhhnetusers -OUName HR
    import-hhhnetusers -OUName IT
    import-hhhnetusers -OUName Marketing
    import-hhhnetusers -OUName Sales
    
    
    
