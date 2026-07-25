# 14 — Troubleshooting and Lessons Learned

## 1. Installed Server Core Instead of Desktop Experience
**Issue:** The original server installation did not include the GUI.

**Resolution:** Reinstalled Windows Server 2022 using Desktop Experience.

**Lesson:** Verify the edition and installation type before deployment.

---

## 2. Renamed the Domain Controller After Promotion
**Issue:** The server was renamed after becoming a domain controller.

**Resolution:** Rebuilt the server and assigned the correct name before promotion.

**Lesson:** Finalize the name and IP configuration before installing AD DS.

---

## 3. Built-in Users Container Versus an OU
**Issue:** The built-in Users container was confused with an Organizational Unit.

**Resolution:** Created a separate corporate users OU and moved managed users into it.

**Lesson:** Built-in containers and OUs have different management and Group Policy behavior.

---

## 4. Windows 11 Virtual Hardware Requirements
**Issue:** Windows 11 required TPM 2.0 and Secure Boot.

**Resolution:** Used Windows 10 as the client VM.

**Lesson:** Check guest OS requirements before deployment.

---

## 5. Domain Join Failure
**Issue:** PC01 could not join `contoso.local`.

**Resolution:** Corrected VirtualBox networking and configured PC01 to use DC01 for DNS.

**Lesson:** Domain joins require connectivity, DNS resolution, and a reachable domain controller.

---

## 6. APIPA or Duplicate Address Issue
**Issue:** The client received a `169.254.x.x` address or experienced an IP conflict.

**Resolution:** Corrected DHCP/network settings and renewed the lease.

**Lesson:** APIPA normally indicates that the DHCP request failed.

---

## 7. Hidden Share Naming
**Issue:** Hidden shares such as `IT$` were initially confusing.

**Resolution:** Used the complete UNC path including `$`.

**Lesson:** A trailing `$` hides a share from browsing but is not a security control.

---

## 8. Drive Mapping GPO Did Not Apply
**Issue:** Department drives did not map.

**Cause:** Users remained in the built-in Users container instead of the linked OU.

**Resolution:** Moved users to the correct OU and forced policy processing.

**Lesson:** GPO application depends on object location and scope.

---

## 9. Wallpaper Share Was Not Available
**Issue:** The client could not access the wallpaper file.

**Cause:** Advanced Sharing changes had not been applied.

**Resolution:** Applied sharing settings and verified Share and NTFS permissions.

**Lesson:** GPO resources must be reachable by the affected users or computers.

---

## 10. User Settings Linked Only to a Computer OU
**Issue:** User Configuration settings did not apply.

**Cause:** The GPO was linked only to the Workstations OU.

**Resolution:** Linked user settings to the OU containing user accounts or separated user and computer GPOs.

**Lesson:** Policy scope must match the setting type.

---

## 11. PowerShell Syntax Errors
**Issue:** Commands failed because of missing spaces or incorrect formatting.

Incorrect examples:
```text
Select
New-Aduser-Name
```

Correct examples:
```powershell
Get-ADUser -Filter * | Select-Object Name
New-ADUser -Name "Example User"
```

**Lesson:** PowerShell syntax is precise.

---

## 12. VirtualBox Shared Clipboard Did Not Work
**Issue:** Commands could not be pasted into the VM.

**Resolution:** Entered commands manually.

**Lesson:** Administrators should be comfortable validating and typing commands manually.

---

## 13. Windows 10 Settings Application Problem
**Issue:** The modern Settings app was unreliable.

**Resolution:** Used legacy tools such as Control Panel, `ncpa.cpl`, and `sysdm.cpl`.

**Lesson:** Windows offers multiple administration interfaces.

---

## 14. DFS Destination Folder Access Denied
**Issue:** An access-denied error appeared when creating DFS folders through File Explorer.

**Resolution:** Created namespace folders in DFS Management and linked existing share targets.

**Lesson:** DFS namespace objects should be managed through the DFS console.

---

## 15. Windows Server Backup Storage
**Issue:** Backup required a separate destination.

**Resolution:** Added a second virtual disk.

**Lesson:** Backups should not live only on the operating system volume.

---

## 16. WSUS Client Policy Verification
**Issue:** It was necessary to confirm that PC01 received the WSUS settings.

**Resolution:** Ran `gpupdate /force`, checked `gpresult /r`, and verified Windows Update policy registry values.

**Lesson:** Group Policy, DNS, WSUS, and client reporting must all work together.

---

## 17. No Internet Access in the Virtual Machines
**Issue:** The lab currently supports internal communication but no outbound internet access.

**Planned Resolution:** Add or configure a NAT adapter while preserving the isolated AD network.

**Lesson:** Hybrid services require controlled outbound connectivity, but the domain controller should not be exposed directly to inbound internet traffic.
