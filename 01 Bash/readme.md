## check LS_COLORS Environment Variable
   $ echo $LS_COLORS

## Export LS_COLORS to .bashrc
   $ dircolors -b >> .bashrc

## Edit ~.bashrc file.
   $vim ~/.bashrc

## Edit number form LS_COLORS
   no	Global default
   fi	Normal files
   di	Directory
   ln	Symbolic link
   bd	Block device
   cd 	Character device
   or 	Symbolic link to a non-existent file
   ex 	Excecutable file
   *.extension	Example.*.mp3

## Save and apply new setting
   source ~/.bashrc

## Seeting vi as a command line edditing shell.
`vim ~/.bashrc`

Add next command
	`set -o vi`

Source to changes take effect
	`source ~/.bashrc`
