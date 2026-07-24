# 02 — Active Directory and DNS

## Objective
Deploy a new Active Directory forest and configure DNS for the lab domain.

## Configuration
- Domain: `contoso.local`
- Domain controller: `DC01`
- Forest: New forest
- DNS: Installed with Active Directory Domain Services

## Tasks Completed
1. Installed Active Directory Domain Services.
2. Promoted `DC01` to a domain controller.
3. Created the `contoso.local` forest.
4. Installed Active Directory-integrated DNS.
5. Configured clients to use `DC01` as their DNS server.

## Validation
```powershell
Get-ADDomain
Get-ADForest
Get-DnsServerZone
```

## Key Lesson
Active Directory depends on DNS. Domain members should use the internal Active Directory DNS server.
