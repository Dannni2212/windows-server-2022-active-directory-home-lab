# 10 — Windows Server Backup

## Objective
Configure a basic domain controller backup.

## Tasks Completed
1. Added a second virtual disk.
2. Initialized and formatted it as `D:`.
3. Installed Windows Server Backup.
4. Configured a one-time custom backup.
5. Selected System State.
6. Selected the secondary disk as the destination.

## Installation
```powershell
Install-WindowsFeature Windows-Server-Backup
```

## Key Lesson
Backups should be stored separately from the operating system volume and should eventually be restore-tested.
