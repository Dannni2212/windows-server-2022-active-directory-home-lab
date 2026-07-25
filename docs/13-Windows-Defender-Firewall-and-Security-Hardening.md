# Lab 13: Windows Defender Firewall & Security Hardening

## Overview

This lab demonstrates the configuration and management of Windows Defender Firewall with Advanced Security in a Windows Server 2022 Active Directory environment. The objective was to secure critical network services while maintaining functionality for domain administration and client connectivity.

Firewall profiles, logging, inbound rules, PowerShell management, and validation testing were performed to simulate enterprise security administration.

---

## Objectives

- Configure Windows Defender Firewall profiles
- Enable firewall logging
- Configure inbound firewall rules for core services
- Manage firewall rules using PowerShell
- Validate network connectivity from a domain-joined client
- Troubleshoot firewall and network profile issues

---

## Lab Environment

| Component | Description |
|----------|-------------|
| Server | Windows Server 2022 (DC01) |
| Client | Windows 10 (PC01) |
| Domain | contoso.local |
| IP Address | 192.168.56.10 |

---

## Firewall Logging Configuration

Firewall logging was enabled to improve monitoring and troubleshooting capabilities.

| Setting | Configuration |
|----------|--------------|
| Log File | `%systemroot%\System32\LogFiles\Firewall\pfirewall.log` |
| Maximum Log Size | 16,384 KB |
| Log Dropped Packets | Enabled |
| Log Successful Connections | Enabled |

---

## Firewall Rules Configured

### Remote Desktop (RDP)

| Setting | Value |
|----------|-------|
| Protocol | TCP |
| Port | 3389 |
| Direction | Inbound |
| Action | Allow |
| Profile | Domain |

Purpose:

Allows administrators to remotely manage the domain controller using Remote Desktop.

---

### Server Message Block (SMB)

| Setting | Value |
|----------|-------|
| Protocol | TCP |
| Port | 445 |
| Direction | Inbound |
| Action | Allow |
| Profile | Domain |

Purpose:

Allows secure file sharing between domain computers.

---

### Domain Name System (DNS)

#### TCP

| Protocol | TCP |
|----------|-----|
| Port | 53 |

#### UDP

| Protocol | UDP |
|----------|-----|
| Port | 53 |

Purpose:

Supports Active Directory name resolution and DNS queries.

---

### Windows Remote Management (WinRM)

| Setting | Value |
|----------|-------|
| Protocol | TCP |
| Port | 5985 |
| Direction | Inbound |
| Action | Allow |
| Profile | Domain |

Purpose:

Allows PowerShell Remoting for remote administration.

---

### ICMP Echo Request

| Setting | Value |
|----------|-------|
| Protocol | ICMPv4 |
| Type | Echo Request |
| Direction | Inbound |
| Action | Allow |
| Profile | Domain |

Purpose:

Allows network connectivity testing using Ping.

---

## PowerShell Commands Used

```powershell
Get-NetFirewallProfile

Get-NetFirewallRule

New-NetFirewallRule

Set-NetFirewallProfile

Get-NetConnectionProfile

Test-WSMan

Get-Service NTDS

Get-Service DNS

Get-Service Netlogon

nltest /dsgetdc:contoso.local
```

---

## Validation Testing

Testing was performed from the Windows 10 client (PC01) to verify that firewall rules permitted expected network traffic.

| Test | Result |
|------|:------:|
| DNS Resolution (nslookup) | ✅ Pass |
| SMB File Share Access | ✅ Pass |
| Remote Desktop Connectivity | ✅ Pass* |
| ICMP (Ping) | ✅ Pass |
| PowerShell Remoting (WinRM) | ✅ Pass |

> **Note:** Remote Desktop access also requires appropriate user authorization through Remote Desktop Services policies in addition to the firewall rule.

---

## Troubleshooting

### Network Profile Detection

During testing, Windows identified the network using the Public profile instead of the expected Domain profile.

The following services and configurations were verified:

- Active Directory Domain Services (NTDS)
- DNS Server
- Netlogon
- Domain Controller discovery (`nltest`)
- DNS configuration
- Network connectivity

Despite the network profile behavior within the VirtualBox lab environment, Active Directory, DNS, and firewall functionality operated successfully.

---

## Skills Demonstrated

- Windows Defender Firewall Administration
- Windows Firewall with Advanced Security
- Firewall Logging Configuration
- Firewall Rule Management
- PowerShell Administration
- Remote Desktop Configuration
- DNS Configuration
- SMB Security
- WinRM Configuration
- ICMP Configuration
- Network Troubleshooting
- Windows Server Security Hardening

---

## Project Outcome

Successfully configured and validated Windows Defender Firewall within a Windows Server 2022 Active Directory environment. Core administrative services remained operational while security controls were implemented and verified through PowerShell and client-side testing.
