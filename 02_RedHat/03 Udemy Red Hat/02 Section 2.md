### 9. RED HAT LINUX ADMINISTRATION II
* Accessing the command line using the local console
- Objetive: After the completion of this section, students should be able to log into a Linux systen on a local text console and run simple commands using the shell.

- The bash Shell
	The shell provides you with an interface to the UNIX ystem. It gathers input from you and executes progams based on that input....

- Shell Prompt:
The prompt $, which is called command prompt, is issue by the shell. While the propmt is displayed....

- Over the long history of UNIX-like systerms, many shells have been developed....

## 10.  Logging in to a Local Machine
- Users access the bash shell through a terminal. A terminal provides a keyboard for user input and display for uotpu. On text-based installations, this can be the Linux machine's physical console. Terminal can also be configured through serial ports.

- Another way to access a shell is from virtual console. A Linux machine's physical console supports multiple virutal consoles which act like separate terminals. Each vvirtual console suppoorts an independent login sessions.

- Each virtual console supports an independent login session. You can switch between them by pressing Cront+Alt and a function key (F1 to F6) at the same time.

- In Red Hat Enterprice Linux 8, if the graphical environment is available, the login screen will run on the first virtual console, called tty1. Five additional text login propmts are available on virtual consoles two htorught six.

## 11. Genome
## 12. Practice Session.
-`whoami`: Print the user name associated with the current effective user ID.

- How to run two command in the same line:
`date;uptime`

-`useradd user1`  // create user
-`passwd user1`   // changed password
-`su - user1`     // changing to user1

Display file type:
`file <folder/file>` 
`file /etc/passwd`	// will return ASCII text
`file /home`			// will return directory

Display file content
-`cat <file>`: all output will come all pages together.
-`less <file>`: output wull come page by page. 
> `cat <file> <file>...` can open two files together to display.
-`head -10 <file>`: will display only first 10 lines from file.
-`tail -10 <file>`: will display only last 10 lines from file.

Tab command to complete commands.
`pass`, <tab>, then it display possible commads to use.

Using '\' and the end of a command instruction to add more commands to execute.
	`cat <path/file> \`
	<path/file2>
	<path/file3>

History commands
`history`: show all commands used previusly in cli session.

Shurtcuts
`control + a`: jump cursor to the start of the line.
`control + e`: jump cursor to the end of the lne.
`contorl + u`: clean from beggining of the line.
	
