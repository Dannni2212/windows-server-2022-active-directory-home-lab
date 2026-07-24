# 05 — File Shares and Permissions

## Objective
Create department shares with appropriate Share and NTFS permissions.

## Shares
- `Sales$`
- `Finance$`
- `IT$`

## Tasks Completed
1. Created department folders.
2. Configured Advanced Sharing.
3. Assigned Share permissions.
4. Configured NTFS permissions.
5. Granted department groups access.
6. Tested access with domain accounts.

## Validation
```powershell
Get-SmbShare
Get-SmbShareAccess -Name "Sales$"
```

## Key Lesson
Effective network access is determined by the most restrictive combination of Share and NTFS permissions.
