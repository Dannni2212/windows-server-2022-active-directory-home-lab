# 🖥️ Windows Server 2022 Active Directory Home Lab

## Overview

This repository documents my Windows Server 2022 Active Directory Home Lab built in Oracle VirtualBox. The project was created to gain hands-on experience with enterprise Windows infrastructure and prepare for a Junior Systems Administrator role.

The lab simulates a small business environment using Active Directory Domain Services, DNS, DHCP, Group Policy, DFS, Windows Server Backup, WSUS, PowerShell, and Windows 10 domain administration.
## ## Table of Contents

- [Overview](#overview)
- [Lab Architecture](#lab-architecture)
- [Lab Environment](#lab-environment)
- [Technologies](#technologies)
- [Skills Demonstrated](#skills-demonstrated)
- [Documentation](#documentation)
- [Future Expansion](#future-expansion)
- [Goal](#goal)
---
## Project Objectives

The purpose of this project was to build and administer a Windows Server 2022 Active Directory environment from the ground up while gaining practical experience with technologies commonly used in enterprise environments.

### Objectives

- Deploy a Windows Server 2022 Domain Controller
- Configure Active Directory Domain Services (AD DS)
- Configure DNS and DHCP services
- Join Windows 10 clients to the domain
- Create Organizational Units (OUs), users, and security groups
- Configure file shares with Share and NTFS permissions
- Deploy Group Policy Objects (GPOs)
- Automate administrative tasks using PowerShell
- Configure a DFS Namespace
- Configure Windows Server Backup
- Deploy and manage Windows Server Update Services (WSUS)
- Document the environment and troubleshooting process
## Lab Environment

| Component | Configuration |
|-----------|---------------|
| Hypervisor | Oracle VirtualBox |
| Domain | contoso.local |
| Domain Controller | DC01 |
| Client | Windows 10 (PC01) |
| Server OS | Windows Server 2022 |
| DNS | Active Directory Integrated |
| DHCP | Windows DHCP Server |
| DFS | Namespace |
| WSUS | Windows Server Update Services |

---## Repository Structure

```text
windows-server-2022-active-directory-home-lab/
├── diagrams/
│   └── windows-server-2022-home-lab-topology.png
├── docs/
│   ├── Active Directory.md
│   ├── DNS.md
│   ├── DHCP.md
│   ├── Group Policy.md
│   ├── DFS.md
│   ├── WSUS.md
│   └── ...
├── screenshots/
├── scripts/
│   └── PowerShell-Examples.ps1
├── LICENSE
└── README.md
```
**
## Technologies

- Windows Server 2022
- Active Directory
- DNS
- DHCP
- Group Policy
- DFS Namespace
- Windows Server Backup
- WSUS
- PowerShell
- VirtualBox

---
## Skills Matrix

| Technology | Implemented |
|------------|:-----------:|
| Windows Server 2022 | ✅ |
| Active Directory Domain Services | ✅ |
| DNS | ✅ |
| DHCP | ✅ |
| Organizational Units | ✅ |
| User & Group Management | ✅ |
| NTFS Permissions | ✅ |
| SMB File Shares | ✅ |
| Group Policy | ✅ |
| Drive Mapping | ✅ |
| DFS Namespace | ✅ |
| Windows Server Backup | ✅ |
| WSUS | ✅ |
| PowerShell | ✅ |
| Windows 10 Domain Join | ✅ |
| Oracle VirtualBox | ✅ |
## Skills Demonstrated

- Active Directory Administration
- DNS Configuration
- DHCP Configuration
- Organizational Units
- User & Group Management
- NTFS Permissions
- Share Permissions
- Hidden Shares
- Group Policy Management
- Drive Mapping
- Windows Server Administration
- PowerShell Administration
- DFS Namespace
- Windows Server Backup
- WSUS
- Windows Troubleshooting

---

## Documentation

| Lab | Description |
|------|-------------|
| 01 | Windows Server Installation |
| 02 | Active Directory & DNS |
| 03 | Users, Groups & OUs |
| 04 | Windows Domain Join |
| 05 | File Shares & Permissions |
| 06 | Group Policy |
| 07 | PowerShell Administration |
| 08 | DHCP |
| 09 | DFS Namespace |
| 10 | Windows Server Backup |
| 11 | WSUS |
| 12 | Troubleshooting |

---## Resume Highlights

Through this project I demonstrated experience with:

- Active Directory administration
- Windows Server 2022
- DNS and DHCP configuration
- Group Policy management
- PowerShell scripting
- DFS Namespaces
- Windows Server Backup
- Windows Server Update Services (WSUS)
- File sharing and NTFS permissions
- Domain-joined Windows client administration
- Enterprise infrastructure documentation

## Future Enhancements

- Integrate Microsoft Entra ID
- Configure Azure AD Connect
- Deploy Microsoft Intune
- Configure Microsoft 365 administration
- Explore Azure Virtual Machines
- Implement Windows Admin Center
- Add monitoring and logging solutions
---

## Goal

The purpose of this project is to demonstrate hands-on Windows Server administration skills using technologies commonly found in enterprise environments.
---

## Project Summary

This home lab provided hands-on experience deploying, administering, and troubleshooting a Windows Server 2022 Active Directory environment.

Through this project, I gained practical experience with identity management, networking services, Group Policy, Windows administration, PowerShell automation, and enterprise infrastructure documentation.

This repository demonstrates my ability to build, manage, and document a Windows domain environment using industry-standard Microsoft technologies.
