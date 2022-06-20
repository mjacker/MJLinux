### 13. Understanding filesystem
/bin		User Binaries
/sbin		System Binaries
/etc		Configuration Files
/dev		Device Files
/proc		Process Information
/var		Variable Files
/tmp		Temporary Files
/usr		User Programs
/home		Home Directories
/boot		Boot Loader Files
/lib		System Libraries
/opt		Optional add-on Apps
/mnt		Mount Directory
/media	Removable Devices
/srv		Service Data

### 14. Understanding filesystem2
### 15. Linux File types

When navigating the Linux file system you are sure to encounter different file types.
The most used and obvious file types are regular files and directories.
However, the Linux operating system has more to offer in terms of file types as it also includes another 5 file types. This short article will help you to recognize all the 7 different file types within the Linux operating system.

-: regular file
d: directory
c: character device file
b: block device file
s: local socket file
p: named pipe
l: symbolic link

Regular file:
The regular file is a most common file type found on the Linux system. It governs all different files such us text files images, binary files, shared libraries, etc. You can create a regular file with the touch command:
`$ls -ltr linuxserver.com`
-rwxrwxr-x ...

Directory:
Directory is second most common file type found in Linux. Directory can be created with the `mkdir` command:
`$ mkdir FileTypes`
`$ ls -ld FyleTypes/`
drwxrwxr-x ...

Character Device
Character and block device files allow users and programs to communicate with hardware peripheral devices. for example:

`$ ls -ld /deb/vmmon`
crw------- ...

Block Device
Block devices are similar to character devices. They mostly govern hardware as hard drives, memory, etc.

`$ ls -ld /dev/sda`
brw-rw---- ...

Local domain sockets
Local domain sockets are used for communication between processes. Generally, they are used by services such as X windows, syslog and etc.

`$ ls -ld /deb/log`
srw-rw-rw- ....
> Sockerts can be created by socket system call and removed by the unlink or rm commands.

Named Pipes
Similarly as Local sockets, named pipes allow communication between two local processes. They can be created by the `mkno` command and removed with the rm command.


Symbolic Links
`$ ls -ld file2`
lrwxrwxrwx ...

`$ ls -ld /etc/services
-rw-r--r-- ...


### 16. Absolute and Relative Path
A path is a unique locatino to a file or a folder in a file system of an OS. A path to a file is a combination of . and alphanumeric character.

#### Abolute path
An Absolute path is defined as the specifying the location of a file or directory from the root directory (/). In other words we can say absolute path is a complete path from start of actual filesystem from / directory.

Examples
/var/cron/chrony
/eetc/httpd/http.conf
/boot/grub.cong
> All these paths started from / directory which is a root directory for every Linux/Unix machines.

#### Relative path
Is defined as path related to the present working directory (pwd). Suppose I am Located in /var/ftp and I want to change directorey to /var/ftp/pub. I can use a relative path concept to change directory to kernel.

- Changing directory using relative path.
`cd pub`

- Changing directory using absolute path.
`cd /car/ftp/pub`


---
### 17. PRACTICE SESSION
`cd /var/log/chrony/`	// abosolute form
`pwd`
`cd /var/log`
`pwd`
`cd /var/log/chrony/
`pwd`

`cd chrony/` // relative form
`cd ..`		// go back to parent directory`

`ls -R`: ls in recursive
`ls ~`: display parent folder files.


### 18. Command line management
| S. No | ACTIVITY | COMMAND SYNTAX|
|---|---|---|
| 1 | Create a directory | mkdir directory |
| 2 | Copy a file | cp file new-file |
| 3 | Copy a directory and its contents | cp -r directory new-directory |
| 4 | Move or rename a file or directory | mv file new-file |
| 5 | Remove a file | rm file |
| 6 | Remove a directory containing files | rm -r directory |
| 7 | Remove an empty directory | rmdir directory |

Creating a folder inside another folder
`mkdir -p john/sam`

### 19. Soft Link and Hard Link
A link in UNIX is a pointer to a file.

A sumbolic or soft link is an actual link to the original file, whereas a hard link is a mirror copy of the original file. If you delete the original file, the soft link has no value, because it  points to a non-existent file.  But in the case of hard link, it is entirely opposite. If you delete the original file, the hard link can still has the data of the original file. Because hard link acts as a mirror copy of the original file.

Soft link:
- can cross the file system,
- allows you to link between directories, 
- has different inodes number and file permissions than original file, 
- permissions will not be updated.

Hard link:
- can nota cross the file system boundaries, 
- can not link directories, 
- has the same inodes number and permissions of original file, 
- permissions will be updated if we change the permissions of source file.

### 20. PRACTIECE LAB SESSION - soft link, hard link.

