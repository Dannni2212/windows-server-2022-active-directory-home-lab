# 08 — DHCP Server

## Objective
Configure DHCP so domain clients receive network settings automatically.

## Tasks Completed
1. Installed DHCP Server.
2. Completed post-installation configuration.
3. Authorized DHCP in Active Directory.
4. Created an IPv4 scope.
5. Configured scope options.
6. Renewed PC01's address.
7. Verified the lease.

## Validation
```powershell
Get-DhcpServerInDC
Get-DhcpServerv4Scope
```

```cmd
ipconfig /release
ipconfig /renew
ipconfig /all
```

## Key Lesson
An APIPA address in `169.254.0.0/16` generally indicates DHCP failure.
