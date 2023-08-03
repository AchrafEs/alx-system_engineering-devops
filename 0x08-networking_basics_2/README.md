`0x08-networking_basics_2`

1. `localhost and 127.0.0.1:`

`localhost` is a hostname that refers to the current device used to access it, typically the local machine itself.
It is used to establish a connection to the same machine or loopback network interface.

`127.0.0.1` is the loopback IP address, which is reserved for the purpose of testing network functions on a local
machine without being connected to any external network. When you access localhost or 127.0.0.1 in your web browser
or any application, it will connect to the local server running on the same machine.

2. `0.0.0.0:`

In the context of networking, 0.0.0.0 is a special IP address that generally means "all IPv4 addresses on the local
machine." It is used to bind or listen to all available network interfaces on the host.
When a server or application binds to 0.0.0.0, it will be accessible from any available network interface
(including 127.0.0.1 and any other assigned IP addresses).

3. `/etc/hosts:`

`/etc/hosts` is a system file used by operating systems (e.g., Linux, macOS, Unix) to map hostnames to IP addresses
before accessing external DNS servers. It is a plain text file with a list of mappings between IP addresses and
corresponding hostnames. When you try to access a hostname in your web browser or other applications, the operating
system first checks this file to see if there is a corresponding IP address. If found, it uses that IP address;
otherwise, it queries external DNS servers to resolve the hostname.

4. `Displaying active network interfaces:`

The method to display active network interfaces depends on your operating system. Here are some common ways to do it:

	`On Windows:`
	Open Command Prompt or PowerShell and enter the following command:
	```
	ipconfig
	```
	`On Linux and macOS:`
	Open the terminal and enter the following command:
	```
	ifconfig
	```
The output will show you a list of active network interfaces, along with their IP addresses, MAC addresses,
and other relevant information.
