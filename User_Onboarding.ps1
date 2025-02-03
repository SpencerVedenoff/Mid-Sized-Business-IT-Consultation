# Import Active Directory Module
Import-Module ActiveDirectory

# Read the JSON file containing new user info
$users = Get-Content "C:\HRExports\new_users.json" | ConvertFrom-Json

foreach ($user in $users) {
    # Set user attributes
    $userPrincipalName = "$($user.firstName).$($user.lastName)@yourdomain.com"
    $displayName = "$($user.firstName) $($user.lastName)"
    $password = ConvertTo-SecureString "TempP@ssw0rd!" -AsPlainText -Force

    # Create AD User
    New-ADUser -Name $displayName `
               -GivenName $user.firstName `
               -Surname $user.lastName `
               -UserPrincipalName $userPrincipalName `
               -SamAccountName $user.samAccountName `
               -Path "OU=Employees,DC=yourdomain,DC=com" `
               -AccountPassword $password `
               -Enabled $true `
               -PassThru | Add-ADGroupMember -Identity "Employees"

    Write-Host "Created AD account for: $displayName"
}

Write-Host "User creation process complete."
