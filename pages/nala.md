## #nala
	- {{video https://youtu.be/oroSkR4Nn_w?si=uBQ3yjCcEDry_NWY}}
	- {{youtube-timestamp 142}} add mirror, install
		- Go to website and download and install the deb packages with keys, then run the code below
		- {{renderer :linkpreview,[Just a moment...](https://gitlab.com/volian/nala}})
		- {{renderer :linkpreview,[Wiki · Volian Linux / nala · GitLab](https://gitlab.com/volian/nala/-/wikis/Installation}})
		- ```cmd
		  echo "deb-src [Files...](https://deb.volian.org/volian/) scar main" | sudo tee -a /etc/apt/sources.list.d/volian-archive-scar-unstable.list
		  sudo apt update && sudo apt install nala
		  ```
		- {{youtube-timestamp 190}}  upgrade
			- ```cmd
			  sudo nala upgrade
			  ```
		- {{youtube-timestamp 369}}
			- ```terminal
			  nala history
			  ```
		- {{youtube-timestamp 386}}  install
			- ```terminal
			  sudo nala install kitty
			  ```
		- {{youtube-timestamp 403}} undo changes from history
			- ```terminal
			  nala history
			  sudo nala history undo 2
			  ```
		- {{youtube-timestamp 474}} fetch mirrors, then pick the ones you want saved to settings, can run every month to keep the fastest on list
			- ```terminal
			  sudo nala fetch
			  sudo nala update
			  ```
		-
		-
		-