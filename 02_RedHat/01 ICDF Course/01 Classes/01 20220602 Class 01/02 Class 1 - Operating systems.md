## Operating systems
- 1 windows famili
    * windows server
    * windows

- 2 unix-liked famili
    - unix
        - BSD..
            -FreeBSD
                - MacOS x
                - OpenBSD
        - Linux
            -RHEL
            -Debian
            -ArchLinux

## Progessing of RedHat Enterprise
### Getting help in CLI
>CLI: command line interface

- `ls`: list content of a folder.
- `ssh`: secure shell.

### how to get help
help usage examples:
- `ssh --help` show the command help itself.
- `man <keyboar/command>` : using a manual to search for a specific command.

> When you use `man`, you can move screen as you do in Vim. (using j, k).

### file system
- `/bin` binary, executable files.
- `/sbin` system binary, administrate executable file.

### traveling in directories
- `cd` chage directory
- `pwd` show full path aabsolute of working directory.
- `ls` list conents
- `-a` all context
- `-l` long format
- `-r` recursive

### special paths
- `/` root
- `~` home folder
> // se suele guardar esa configuracion en /home/user

- `.` current folder
- `..` parent folder.


## hiden folder/files 
Can use a dot in front of folders or file to mark it as a hidden item.
- `./FolderHidden/`   hidden folder.
- `.myFileHidden.ext` hidden file.


## File management utilies
- `mv` move // also used to rename
- `rm` remove
- `cp` copy
- `mkdir` make directory

    -f: force
    -r: recursively (include subdirectories)

## example if a folder has a file, and can not delete
    rm -fr /folder/     // borra recursivamente

## Tar: Tape Archives
- `tar --help` Saves many files together into a single tape or disk archive, and can restore individual files from the archive.


    -c/--create : create file  |
    -x/--extract: extract      |
                               |     |-q :gzip    |
                               |_____|-j :bzip2   |
                                     |-J :xz      |_________> -f <archive file>
                                     |--lzma: lzma|    |
    -t/--list       |                                  |
    -r/--appent     |__________________________________|
    -u/--update     |

example
- `tar -cgf test.tar.gz *.py` save all python files into file test.tar.gz

## Admin autehntication
- `su` switch to supper
- `sudo` switch to super user, need current...
    `-s` for swtch user
    `<command>` for execute the command
- `visudo`: configure who can use sudo
        group "wheel" is the default suder group.

# User management
- `usermod`
    `-g <group>`set primary group 
    `-G <groups>` set groups
    `-Ga <groups>` append groups
    `-d <homeDir>` set home folder
    `-dm <homeDri>` move home folder to new place
    `-L` lock user
    `-U` unlock user

`useradd` add user.
`userdel` delete user.
`passwd` change password.




