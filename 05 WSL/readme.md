### WSL
Windows Subsystem for Linux is a compatibility layer for running Linux binary executables natively on Windows.

### Available Linux distributions
`wsl --list --online`

### Install
`wsl --install -d <Distribution Name>`

### Install additional Linux distributions after initial install
`wsl --install -d <Distribution Name>`

---
# Installing WSL on another drive in Windows
1. Check WSL 2 installations that are already installed in your computer
`wsl --list -v`

2. If it still running on the system, stop it.
`wsl -t Ubuntu`

3. Export to a folder
`wsl --export Ubuntu "D:\wsl_export\ubuntu-ex.tar"`

4. Unregister previous WSL installation.
`wsl --unregister Ubuntu`

5. import WSL
`wsl --import Ubuntu "D:\wsl_export\ubuntu-ex.tar"`

## Bug: Landing in root user by default
## Bug: Landing in root user by default
1. Terminate wsl
`wsl --terminate <distro>`

	2. Log into root user
	`wsl.-u root -d <distro>`

	3. From in WSL
	`usermod -l newname oldname`
	`sudo usermod -d /home/newHomeDir -m newUsername`

	4. Adding password 
	passwd

2. set default user from powershell.
`kali config --default-user mjacker`
