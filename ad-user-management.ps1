<#
.SYNOPSIS
    Demonstrates basic Active Directory user administration.
#>
#Requires -Modules ActiveDirectory
Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

try {
    Import-Module ActiveDirectory

    Write-Host "Enabled Active Directory users:"
    Get-ADUser -Filter 'Enabled -eq $true' |
        Select-Object Name, SamAccountName, UserPrincipalName |
        Sort-Object Name

    $SamAccountName = "labuser"
    $existingUser = Get-ADUser -Filter "SamAccountName -eq '$SamAccountName'" -ErrorAction SilentlyContinue

    if ($null -eq $existingUser) {
        Write-Host "Example user '$SamAccountName' does not exist."
        Write-Host "Review the commented New-ADUser example before use."

        # $securePassword = Read-Host "Enter a temporary password" -AsSecureString
        # New-ADUser `
        #     -Name "Lab User" `
        #     -GivenName "Lab" `
        #     -Surname "User" `
        #     -SamAccountName $SamAccountName `
        #     -UserPrincipalName "$SamAccountName@contoso.local" `
        #     -Path "OU=IT,OU=Corp Users,DC=contoso,DC=local" `
        #     -AccountPassword $securePassword `
        #     -Enabled $true `
        #     -ChangePasswordAtLogon $true
    }
    else {
        $existingUser | Select-Object Name, SamAccountName, Enabled
    }
}
catch {
    Write-Error "The script failed: $($_.Exception.Message)"
    exit 1
}
