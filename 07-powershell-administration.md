# 07 — PowerShell Administration

## Objective
Use PowerShell for common Active Directory tasks.

## Commands Practiced
```powershell
Import-Module ActiveDirectory
Get-ADUser -Filter *
Get-ADUser -Filter * | Select-Object Name, SamAccountName, Enabled
New-ADUser -Name "Example User"
Disable-ADAccount -Identity "euser"
Enable-ADAccount -Identity "euser"
Set-ADAccountPassword -Identity "euser" -Reset
```

## Lessons Learned
- Cmdlet names and parameter spacing must be exact.
- Test commands with non-production accounts.
- Never store passwords in plain text.
