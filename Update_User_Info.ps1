# Import Active Directory Module
Import-Module ActiveDirectory

# Read HR updates from JSON
$updates = Get-Content "C:\HRExports\updated_users.json" | ConvertFrom-Json

foreach ($update in $updates) {
    $samAccountName = $update.samAccountName
    $newTitle = $update.jobTitle
    $newDepartment = $update.department

    # Check if user exists
    $adUser = Get-ADUser -Filter {SamAccountName -eq $samAccountName} -Properties Title, Department
    if ($adUser) {
        # Update job title and department
        Set-ADUser -Identity $samAccountName -Title $newTitle -Department $newDepartment
        Write-Host "Updated user: $samAccountName | Title: $newTitle | Department: $newDepartment"
    } else {
        Write-Host "User not found: $samAccountName"
    }
}

Write-Host "User profile updates complete."
