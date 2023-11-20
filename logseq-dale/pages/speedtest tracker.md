- go to the website:
	- {{renderer :linkpreview,https://github.com/henrywhitaker3/Speedtest-Tracker}}
	- synology package file station, dalesyn1, docker, create folder 'speedtesttracker'
	- great helper video
		- {{renderer :linkpreview,[How to Install Speedtest Tracker on Your Synology NAS with Docker](https://neellik.com/install-speed-test-tracker-on-your-synology-nas/#portainer_speedtesttracker}})
	- [[synology ssh]] into docker as per the above instructions I enter the following to create the docker container, these are the 'using docker' instructions on the #GitHub site so just get the latest from there.
		- sudo docker run -d   --name=speedtesttracker   -e PUID=1026   
		  -e PGID=100   -p 8788:80   -e TZ=Europe/London   -e OOKLA_EULA_GDPR=true   -v /volume1/doc
		  ker/speedtesttracker:/config   --restart always   henrywhitaker3/speedtest-tracker
	- from my linux browser enter the following:
		- [Speedtest Tracker](http://192.168.86.47:8788/)
			- added 'synology, speedtest tracker' entry in both password managers
			- created a telegram bot for notifications:
				- name:: dbmccombie-internet-speedtest
				  username:: dbmccombieinternetspeedtestbot
				  http-api-token:: 6603612455:AAG0ofzh9B-rWAZTKnfhx4LaBaoMDDivIHA
					- telegram notice
					- Done! Congratulations on your new bot. You will find it at t.me/dbmccombieinternetspeedtestbot. You can now add a description, about section and profile picture for your bot, see /help for a list of commands. By the way, when you've finished creating your cool bot, ping our Bot Support if you want a better username for it. Just make sure the bot is fully operational before you do this.
					- Use this token to access the HTTP API:
					  6603612455:AAG0ofzh9B-rWAZTKnfhx4LaBaoMDDivIHA
					  Keep your token secure and store it safely, it can be used by anyone to control your bot.
					- For a description of the Bot API, see this page:tr
						- {{renderer :linkpreview,[Page not found](https://core.telegram.org/bots/api}})