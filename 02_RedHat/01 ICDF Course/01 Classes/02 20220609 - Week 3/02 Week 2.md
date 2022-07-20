### Accounts Information
`/etc/passwd`
	splitter: ":", foramt format
	format: username: x: user ID: group ID: full name : home path

`sbin/nologin`




### para ver el contenido de la contrasenha
`/etc/shadow/`

	splitter: ":" for columns, "$" for password
	formar: user name : passwood: change :min :man :warning : inactive : expiration : 
	$ algorithhm $ hash key $ encrypted password

/19seventy



min age (-m)
cant change again

warning age -W
notify you to change

inactive age (-I)
change when login

last change date (-d) 

max age (-M) can use current

expired : call administrator

// S: Student
// P: Proferos

// S: se puede cambiar el tipo de seguridad de la contrasenha
// P: si se puede cambiar el tipo de  algoritmo al crear el usuario

// S: se puede cambiar manualmente si?
// P: es posible en algunos casos, pero es mejor por intermedio de otro programa (?)

### Practice 
	1. Create user account user1
	2. With defaulse password "pass"
	3. Let User1 setup his/her password when first login
	4. And can not change password anymore.

Respuesta:
	1. useradd user1
	2. passwd user1
		qazxswedc
		qazxswedc
	3. `chage -M 0 user1`
	4. `chage -d `

	show /etc/shadow

// iniciar session en el usuario creado

  
## delete user password
passwd --delete user1


---
### Permissions
chown: Change owner group

vi test.txt
`chown fl test.txt` : the owner is fl
`chown :user1 test.txt : the group is user1`
> the ':' inform to change the group.

`id` para ver en que grupo esta el current usuearion fl.

absolute style


`chmod 754 test.txt` chmod is for change the permision

-| rwx | r-x | r --
    7     5      4


`chmod a+w text.txt` : cambia el permiso a lectura escritura de todos los usuarios.

`chmod g-x test.txt` : user can execute this file.




1. Write: create, paste, move, rename, remove files
2. Read: list contents

_PRACTICE_
1. Create a folder for default user that user1 can not list the contents.
2. put an text file that user1 can read.

respuesta:

mkdir testdir
vim testdir/test.txt
// add a message
cat testdir/test.txt

// cuando entra con usuario puede mostrar el contenido, but can not modify.

`chmod -r  testdir/test.txt`
`cat test.txt` can not read the file anymore.

`chmod +r testdir/test.txt`

ls -l // changing folder permision

`chmod 711 testdir`
`su user1` cambiando de usuario
// the user can not list the content of folder anymore.


---

