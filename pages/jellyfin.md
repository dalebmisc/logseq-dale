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
	- admin, see bitwarden and proton
	- dale, see bitwarden and proton