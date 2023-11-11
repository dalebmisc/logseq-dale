- check out open source software {{renderer :todomaster}}{{video https://www.youtube.com/watch?v=oLrwk07zZ0Y}}
  id:: 6547d4bb-5ed8-4b47-ba06-ad255a3275a1
	- TODO [04:33](https://www.youtube.com/watch?v=oLrwk07zZ0Y&t=273s) Dashy - Browser Dash and Shortcuts
	- TODO [05:58](https://www.youtube.com/watch?v=oLrwk07zZ0Y&t=358s) Metabase - No Code Data Analytics
	- DONE [07:30](https://www.youtube.com/watch?v=oLrwk07zZ0Y&t=450s) #portainer
	- TODO [11:01](https://www.youtube.com/watch?v=oLrwk07zZ0Y&t=661s) Proxmox - Virtualiation Orchestrator
	- TODO [13:02](https://www.youtube.com/watch?v=oLrwk07zZ0Y&t=782s) NGinX Proxy Manager
	- TODO [14:31](https://www.youtube.com/watch?v=oLrwk07zZ0Y&t=871s) MeshCentral - Remote Machine Management
	- TODO [16:23](https://www.youtube.com/watch?v=oLrwk07zZ0Y&t=983s) TrueNAS Scale
	- TODO [19:09](https://www.youtube.com/watch?v=oLrwk07zZ0Y&t=1149s) Vaultwarden - Password Manager
	- TODO [20:35](https://www.youtube.com/watch?v=oLrwk07zZ0Y&t=1235s) Remotely - Remote Support Tool
	- TODO [21:54](https://www.youtube.com/watch?v=oLrwk07zZ0Y&t=1314s) Guacamole - Remote Desktop in the Browser
	- TODO [24:12](https://www.youtube.com/watch?v=oLrwk07zZ0Y&t=1452s) Pi-hole - Ad-blockingDNS
	- TODO [25:07](https://www.youtube.com/watch?v=oLrwk07zZ0Y&t=1507s) Pi-Alert - Notification of New Network Devices
	- DONE [26:05](https://www.youtube.com/watch?v=oLrwk07zZ0Y&t=1565s) #[[Speedtest Tracker]]
	- TODO [27:35](https://www.youtube.com/watch?v=oLrwk07zZ0Y&t=1655s) Uptime Kuma - Status / Uptime Monitor
	- TODO [29:06](https://www.youtube.com/watch?v=oLrwk07zZ0Y&t=1746s) Home Assistant
	- TODO [31:11](https://www.youtube.com/watch?v=oLrwk07zZ0Y&t=1871s) Mail-in-a-box - Self Hosted Email
	- TODO [32:33](https://www.youtube.com/watch?v=oLrwk07zZ0Y&t=1953s) OpenSprinkler
	- DONE #jellyfin
	-
	- [[home assistant]]
		- ssh into synology
			- script
				- **sudo docker run -d --name=home_assistant -e TZ=Canada/Saskatchewan -v /volume1/docker/homeassistant:/config --net=host --restart always homeassistant/home-assistant**
	- #jellyfin #synology
		- Followed #chatgpt instructions:
		  collapsed:: true
			- ```chatgpt
			  You
			  How do I install the jellyfin container on docker?  Also, port 8096 is already in use for Emby on my synology so how do I work around this?
			  Synology Sage
			  Installing Jellyfin on Docker in your Synology NAS and working around the port conflict with Emby involves a few steps. I'll guide you through the process.
			  
			  Installing Jellyfin on Docker:
			  Access Docker on Synology NAS:
			  
			  Log into your Synology NAS interface.
			  Open the Docker package. If Docker is not installed, you can find it in the Package Center and install it.
			  Download Jellyfin Image:
			  
			  Go to the 'Registry' tab in Docker.
			  Search for 'jellyfin'.
			  Select the official Jellyfin image (usually jellyfin/jellyfin) and download it.
			  Create a Container:
			  
			  After the image has downloaded, switch to the 'Image' tab.
			  Select the Jellyfin image and click 'Launch'.
			  This will open the container creation wizard.
			  Configure the Container:
			  
			  General Settings:
			  Give your container a name.
			  Enable 'auto-restart' if desired.
			  Volume Tab:
			  Add folders for Jellyfin to access your media. For example, you can map /data/tvshows on your NAS to /tvshows in the container.
			  Network:
			  Leave it on 'bridge' mode, which is typically default.
			  Port Settings:
			  This is where you'll address the port conflict. Jellyfin by default uses port 8096, which is already in use by Emby on your NAS.
			  Assign a different external port, such as 8097, and map it to the internal port 8096. This way, you can access Jellyfin via the new port.
			  Environment Variables (Optional):
			  
			  You can set environment variables if needed, based on your preferences or requirements.
			  Finalize and Run:
			  
			  Review your settings and click 'Apply'.
			  The Jellyfin container should now start.
			  Addressing the Port Conflict:
			  Since port 8096 is already in use by Emby, you've reassigned Jellyfin to use a different port (e.g., 8097) in the port settings. This means you will access Jellyfin using http://[YourNASIPAddress]:8097.
			  
			  Post-Installation:
			  Access Jellyfin:
			  
			  Open a web browser and go to http://[YourNASIPAddress]:8097 to access the Jellyfin web interface.
			  Follow the on-screen instructions to complete the Jellyfin setup.
			  Configuring Media Libraries:
			  
			  Add your media libraries in Jellyfin by pointing to the paths you mapped during the container setup.
			  Tips:
			  Ensure your NAS and Docker are updated to the latest versions to avoid compatibility issues.
			  Regularly backup your NAS configuration, especially before major changes.
			  Keep an eye on resource usage; running multiple media servers can be demanding on your NAS hardware.
			  ```
			-
		- Used ports 8097 and 8096
		- Didn't map folders
		- URL: [Jellyfin](http://192.168.86.47:8097)
		- users:
			- admin, Jxi6Nxi9
			- dale, Jxi6Nxi9