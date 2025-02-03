# Import Active Directory Module
Import-Module ActiveDirectory

# Define the list of users to be deactivated (from HR system)
$users = Get-Content "C:\HRExports\terminated_users.json" | ConvertFrom-Json

foreach ($user in $users) {
    $samAccountName = $user.samAccountName

    # Check if user exists
    $adUser = Get-ADUser -Filter {SamAccountName -eq $samAccountName} -ErrorAction SilentlyContinue
    if ($adUser) {
        # Disable account, move to 'Inactive Users' OU, reset password
        Disable-ADAccount -Identity $samAccountName
        Move-ADObject -Identity $adUser.DistinguishedName -TargetPath "OU=Inactive Users,DC=yourdomain,DC=com"
        Set-ADAccountPassword -Identity $samAccountName -NewPassword (ConvertTo-SecureString "Disabled@123!" -AsPlainText -Force)
        
        Write-Host "Disabled and moved user: $samAccountName"
    } else {
        Write-Host "User not found: $samAccountName"
    }
}

Write-Host "Offboarding process complete."
