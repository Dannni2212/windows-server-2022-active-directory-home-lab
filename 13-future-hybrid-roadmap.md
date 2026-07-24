# 13 — Future Hybrid Roadmap

## Preparation
1. Take snapshots of DC01 and PC01.
2. Confirm DNS, DHCP, Group Policy, shares, DFS, backup, and WSUS health.
3. Configure outbound internet access through NAT.
4. Do not expose the domain controller directly to inbound internet traffic.
5. Add a routable UPN suffix.
6. Use a separate member server for synchronization tools when possible.

## Planned Labs

### Microsoft Entra ID
- Create a test tenant
- Create users and groups
- Learn administrative roles
- Compare cloud-only and synchronized identities

### Microsoft Entra Connect Sync
- Install on a member server
- Synchronize selected OUs
- Test password hash synchronization
- Validate synchronized users

### Microsoft 365
- Explore the admin center
- Create and manage users
- Assign licenses
- Learn Exchange Online and Teams basics

### Microsoft Intune
- Enroll a test device
- Create compliance policies
- Configure device settings
- Explore application deployment

### Azure
- Create a resource group
- Build a virtual network
- Deploy a Windows VM
- Configure Network Security Groups
- Explore Azure Backup and Azure Monitor
