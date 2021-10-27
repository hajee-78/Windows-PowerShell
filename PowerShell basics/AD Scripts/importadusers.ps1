Function import-hhhnetusers {
    param(
        [String] $OUName)

    $Import = "C:\PSScript\"+$OUName+".csv"
    $Location = "OU="+$OUName+",DC=hhhnet,DC=local"

    New-ADOrganizationalUnit -Name $OUName -path "DC=hhhnet,DC=local" -ProtectedFromAccidentalDeletion $false
    $Password = "_L0c@ladMi5" | ConvertTo-SecureString -AsPlainText -Force
    Import-Csv $Import | New-ADUser -Path $Location -AccountPassword $Password -Enabled $true
    }

    import-hhhnetusers -OUName HR
    import-hhhnetusers -OUName IT
    import-hhhnetusers -OUName Marketing
    import-hhhnetusers -OUName Sales
