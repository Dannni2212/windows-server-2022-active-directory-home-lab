# 04 — Windows 10 Domain Join

## Objective
Join `PC01` to the `contoso.local` domain.

## Tasks Completed
1. Configured PC01 networking.
2. Verified name resolution.
3. Joined PC01 to the domain.
4. Restarted the client.
5. Signed in with a domain account.
6. Moved the computer object into the Workstations OU.

## Validation
```cmd
whoami
systeminfo | findstr /B /C:"Domain"
gpresult /r
```
