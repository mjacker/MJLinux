### Processes states

	[New Process] --- Schedule ---> (Ready)

	(Traced)  <--- Resume / Suspend ---> (Ready)

	(Running) <--- Run / Resschedule --> (Ready)
	(Running) ---> Zombie
	(Running) --- wait ---> Sleep

	(Sleep) --- Wait for event/signal ---> (Ready)
	(Sleep) < | Standar/Interruptible
				 | Driver/Uninterruptible
				 | Killable
### Monitoring processes

- `top`: press `q` for quit, < > for previous/next page, h for help.
- `ps` : <target><format> Processes

Examples
	- `ps -a`: display all processes
	- `ps -au`: display all user oriented.

STAT:
	- Ss : sleep mode.



> P:  para cambiar de pagina se puede usar "<" o ">" 

### Killing processes
* Kill process usage:
	- `kill [-signal] <PID>`

> [ ] : optional parameters.
> < > : required parameters.

`kill -l`: list the signal names.

* pkill process usage:
	- `pkill [-signal] [-G, GID] [-U UID] <Pattern>`


### Jobs managenementi

Append '&' on your command will let it execute in background

Press Control + Z will suspend current active process

jobs: list jobs

`fg %<job_id>`: let specific job be your ForeGround process.
`bg %<job_id>`: let specific job be a background process.

> a pesar de correr un programa con loop infitino, se puede agregar al final el &, para poder seguir usando el bash, lo envia a background.

`./loop.out &`

###Practice
echo "hello" | sleep 3 | echo "test"

> hacer correr al menos 5 echos, y terminar proceso con pkill (con un pattern para finalizar al mismo tiempo)


---
### systemctl: System Control

systemctl <function> <target>

Example 
`systemctl list-units --type=service` // mostrar los servicios
`systemctl status sshd` // check the sshd service status
`systemctl enable sshd.service` // se iniciara automatico al arrancaar.
`systemctl start sshd.service` // iniciar el servicio


> `man sshd_config` // para ver como configurar el servicio de sshh

`systemctl is-enabled sshd`
`systemctl is-active sshd`
`systemctl disable sshd`
`systemctlg`

