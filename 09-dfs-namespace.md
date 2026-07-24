# 09 — DFS Namespace

## Objective
Provide a single logical path for department file shares.

## Namespace
```text
\\contoso.local\Shares
```

## Folder Targets
- Sales → Sales hidden share
- Finance → Finance hidden share
- IT → IT hidden share

## Tasks Completed
1. Installed DFS Namespaces.
2. Created a domain-based namespace.
3. Added namespace folders.
4. Connected each folder to an existing SMB share.
5. Tested access from PC01.

## Key Lesson
DFS namespace folders should be created through DFS Management, not File Explorer.
