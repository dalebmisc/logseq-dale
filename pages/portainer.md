- Install on #synology as I want to install [[speedtest tracker]] which runs in a docker container and since it runs every hour and logs internet speed I want to put it on [[synology]].
- Install portainer on synology
	- {{video https://www.youtube.com/watch?v=g7oAZQR1fiY}}
	- synology package file station, dalesyn1, docker, create folder 'portainer-ce'
	- enable [[synology ssh]]
		- control panel > #terminal & snmp, check off enable ssh service, keep port 22, click apply button
			- note: on this screen there is a 'terminal' link for more information on what to type in terminal
	- from terminal, ssh into synology nas (see below)
		- enter the following in terminal:
			- sudo docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v /volume1/docker/portainer-ce:/data portainer/portainer-ce:latest
	- from my linux browser enter the following:
		- https://192.168.86.47:9443/
			- added 'synology, portainer' entry in both password managers
- how to ssh into #synology
	- {{video https://www.youtube.com/watch?v=ciTNqAPbBkk}}
		- from terminal
			- **sudo -i ssh dbmccombieAdmin@192.168.86.47**
				- first password is linux password, then it prompts for dbmccombieAdmin password
- disable ssh functionality on #synology when done