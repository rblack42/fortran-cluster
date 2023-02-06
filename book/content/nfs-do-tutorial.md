# Configuring NFS on ubuntu 22.04 LTS

- ref: https://www.howtoforge.com/how-to-install-nfs-server-and-client-on-ubuntu-22-04/

Server:

1. sudo apt update

2. sudo apt instal nfs-kernel-server

		check: 	sudo systemctl is-enabled nfs-server
				sudo status mfs-server


3. sudo mkdir -p /var/nfs/general
 
4. ls -dl /var/nfs/general

n
		verify owned by root

5. sudo chown nobody:nogroup /var/nfs/general

6. sudo chmod 777 /var/nfs/general

5. sudo vim /etc/exports

	/var/nfs/general    192.168.2.0/24(rw,sync,no_subtree_check)

6. sudo exportfs -a


7. sudo systemctl restart nfs-kernel-server


8. sudo ufw status

9. sudo ufw allow from 192.168.2.0/24 to any port nfs

10. sudo ufw status


Client:

1. sudo apt upgrade

2. sudo apt instal nfs-common

3. sudo mkdir -p /nfs/general

4. sudo mount host_ip:/var/nfs/general /nfs/general

5. df -f
	
	192.168.2.1:/var/nfs/general   25G  5.9G   19G  24% /nfs/general
 

Testing

Client:

1. sudo touch /nfs/general/general.test

2. ls -l /nfs/general/general.test

	 -rw-r--r-- 1 nobody nogroup 0 Apr 18 00:02 /nfs/general/general.test

Mount on Boot

client:

1. sudo vim /etc/fstab

	host_ip:/var/nfs/general    /nfs/general   nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0
