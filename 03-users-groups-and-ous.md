# 03 — Users, Groups, and Organizational Units

## Objective
Create an Active Directory structure representing a small organization.

## Tasks Completed
- Created a corporate OU structure.
- Created Sales, Finance, and IT OUs.
- Created department security groups.
- Created user accounts.
- Added users to the appropriate groups.

## Example Structure
```text
contoso.local
└── Corp Users
    ├── Sales
    ├── Finance
    └── IT
```

## Validation
```powershell
Get-ADOrganizationalUnit -Filter *
Get-ADGroup -Filter *
Get-ADUser -Filter * | Select-Object Name, Enabled
```
