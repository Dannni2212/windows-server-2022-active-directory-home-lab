# 01 — Environment and Server Installation

## Objective
Build the initial VirtualBox environment and install Windows Server 2022 Desktop Experience.

## Environment
- Oracle VirtualBox
- Windows Server 2022 Desktop Experience
- Server name: `DC01`
- Windows 10 client: `PC01`

## Tasks Completed
1. Created the Windows Server virtual machine.
2. Installed Windows Server 2022 Desktop Experience.
3. Configured the server name as `DC01`.
4. Configured a static IPv4 address for the domain controller.
5. Created a Windows 10 client virtual machine.
6. Established communication between the two virtual machines.

## Lessons Learned
- Finalize the server name before domain controller promotion.
- Desktop Experience and Server Core are different installation options.
- A domain controller should use a stable IP configuration.
- VirtualBox network mode affects both VM communication and internet access.
