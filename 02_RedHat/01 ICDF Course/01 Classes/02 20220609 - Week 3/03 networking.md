### IP
134.208.3.90/24

//review concept
// LAN: LOCAL AREA NETWORK
// WAN: WAN AREA NETWORK --> Internet

> LAN and WAN have different prefix.





134.208.3.90/24
IP address		


> P: Professor
> S: Student

// Windows setup ip
//P: How to create a mask?

### Net mask: Set prefix to 1s and suffix to 0s
1111 1111 1111 1111 1111 1111 1111 0000 0000 => 255.255.255.0

### Broadcast: Set suffix to 1s
1000 0100 1101 0000 0000 0011 1111 1111 => 134.208.3.255

### nmcli - Network Manager Command Line Interface
To show ip config.

-> con 
			-Add
			-mod
			-del
			-up
			-down
			-show

-> dev
			-status
			-connect
			-disconnect

_Examples_
`nmcli con show` : 


ip adrr : to modify....


`nmcli con mod ens160 ipv4.addr "192.168.46.127/24"`: to modify the ipv4 address to divice ens160

`nmcli con mod "Wired connection 1" ipv4.addr "192.169.46.127"

> need root access



// `ip route`

### type of ip adress
192.*.*.* // is user for private network
169.254.*.* // this is usually is generall, who not are connected to network.


// S: can we create a router
// P: we can't, but we can create cloud.
// Router are devices that has many network cards.

### SSH - Secure Shell
`ssh <user>@<ip>`

`su user1` : 

`w` to show who are connecte throug to ssh.
















