# 11 — Windows Server Update Services

## Objective
Configure centralized Windows update management.

## Tasks Completed
1. Installed WSUS.
2. Selected WID Connectivity and WSUS Services.
3. Configured a content directory.
4. Completed post-installation tasks.
5. Synchronized update metadata.
6. Selected products and classifications.
7. Created Servers and Workstations groups.
8. Created a WSUS client GPO.
9. Configured PC01 to use WSUS.
10. Confirmed PC01 appeared in WSUS.

## Client URL
```text
http://DC01:8530
```

## Validation
```cmd
gpupdate /force
gpresult /r
usoclient StartScan
```

Registry path:
```text
HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate
```
