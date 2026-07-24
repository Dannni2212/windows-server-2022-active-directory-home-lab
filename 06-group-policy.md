# 06 — Group Policy

## Objective
Centrally configure user and computer settings.

## Policies Configured
- Department drive mapping
- Enterprise workstation settings
- Corporate wallpaper
- Hidden wallpaper share
- Disable Control Panel
- Password-protected screen saver
- Screen saver timeout
- Password policy
- WSUS client settings

## Validation
```cmd
gpupdate /force
gpresult /r
gpresult /h C:\gpresult.html
```

## Lessons Learned
- User Configuration follows user objects.
- Computer Configuration follows computer objects.
- GPO links and OU placement must match the intended scope.
