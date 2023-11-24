- customize
	- make terminal look nice
	- add the lines below to the end of the bashrc #file:
		- try this #file first: /home/dale/.bashrc
			- then reload it: source ~/.bashrc
			- this #file works on #popos
		- if not, try this #file next: sudo nano /etc/bashrc
		- Reference if the above doesn't work:
			- Set the PS1: [Bash Shell PS1: 10 Examples to Make Your Linux Prompt like Angelina Jolie](https://www.thegeekstuff.com/2008/09/bash-shell-ps1-10-examples-to-make-your-linux-prompt-like-angelina-jolie/)
		- ```
		  # Function to get the current git branch
		  git_branch() {
		  	git rev-parse --abbrev-ref HEAD 2> /dev/null
		  }
		  
		  # PS1="\[\033[41m\]\[\033[37m\][\s-\V    \d  \@] \u@\h    -->    \w \$(git_branch)\$ \[\033[0m\]"
		  
		  PS1="\[\033[44m\]\[\033[97m\] --> \[\033[0m\]\[\033[41m\]\[\033[37m\]\s-\V \[\033[44m\]\[\033[97m\] --> \[\033[0m\]\[\033[41m\]\[\033[37m\]\d  \@ \[\033[44m\]\[\033[97m\] --> \[\033[0m\]\[\033[41m\]\[\033[37m\]user@host: \u@\h \[\033[44m\]\[\033[97m\] --> \[\033[0m\]\[\033[41m\]\[\033[37m\]folder: \w git branch: \$(git_branch) \[\033[44m\]\[\033[97m\] \[\033[44m\]\[\033[97m\] --> \[\033[0m\]\[\033[41m\]\[\033[37m\]conda: \$CONDA_DEFAULT_ENV \[\033[0m\]$ "
		  
		  # reload bashrc
		  source ~/.bashrc
		  ```
	-
	-
- [[terminal rmlint]]
	- sudo apt install rmlint
	- usage:
		- rmlint - spots duplicates by both name and content
		- rm files will be removed
		- ls files will be kept
		- can adjust this though:
			- at the file level and can specify a directory that contains the original as follows:
				- rmlint * // pictures
			- to remove the files:
				- run the rmlink.sh file that was created, it shows location at the end of the terminal output
					- check the manual for everything that can be done with rmlint
- [[terminal rsync]]
	- sudo apt install rsync
	- usage:
		- to ingest...
			- rsync -av --progress /directory that you want to sync from, e.g. sd card
			  to sync where we are copying recursively and copying timestamps and permissions and file ownership if running as superuser...
			- rsync -av source-directory target-directory
	- benefits:
		- more reliable than a standard copy
		- faster
		- incremental
	- notes:
		- can sync files to a nas
		- just mount the nas as a folder
		- can also send from rsync on the computer to rsync on the nas by passing the host name of nas and path of nas to sync to if your nas supports it
		- only works locally
- [[terminal rclone]]
	- sudo apt install rclone
	- usage:
		- rclone config
		- rclone sync -P . b2test:co-techcraft-test (. is current directory, and target is whatever your target is)
	- notes:
		- similar to rsync but supports cloud providers
- [[terminal ncdu]]
	- sudo apt install ncdu
	- usage:
		- ncdu
	- notes:
		- if you want to delete something just select it and press 'd' to get a dialogue
- [[terminal btop]]
	- sudo apt install btop
	- usage:
		- btop
	- notes:
		- toggle through preset layouts with 'p'
	- can click the number keys corresponding to sections to turn them on and off
- [[terminal ntfy]]
	- sudo apt install
	- usage:
		- commands && ntfy send success || ntfy send failure
			- where commands are the commands to run such as an rsync job, or perhaps a shell script
- [[terminal exa]]
	- sudo apt install exa
	- usage:
		- exa
		- exa -alh
		- exa --tree
		- exa --tree --long
	- can add aliases, likely to bash file:
		- alias ls="exa"
		- alias ll="exa -alh"
		- alias tree="exa --tree"
	- notes:
		- similar to ls
- [[terminal bat]]
	- sudo apt install bat
	- usage:
		- bat tilename
		- bat -p filename
	- notes:
		- similar to cat for viewing contents of file, formats nicer and has line numbers
- [[terminal ripgrep]]
	- sudo apt install ripgrep
	- usage:
		- case sensitive...
			- rg <text to search for>
		- ignores case differences...
			- rg -i <text to search for>
		- regex search...
			- rg -e 'REGEX SEARCH PATTERN'
		- limit search scope to specific directory and any characters followed by .org...
			- rg --glob 'tc/*.org' <text to search for>
		- other...
			- rg --glob 'tc/**/*.org' <text to search for>
- [[terminal fzf]]
	- sudo apt install fzf
	- usage:
		- to get a list of all files to search through...
		- fzf
			- then type what you want to search for...
			- can also search through terminal history by <ctrl> + r, then type what you want to search for
- [[terminal zoxide]]
	- sudo apt install zoxide
	- usage:
		- z <location>
	- notes:
		- like cd command
- [[terminal entr]]
	- sudo apt install entr
	- usage:
		- ls *.py | entr python main.py
	- notes:
		- watch for files to change and can perform an action
			- e.g. watch for a change in your python file then have it run the file
- [[terminal mc]]
	- sudo apt install mc
	- usage:
	- notes:
		- file manager
- [[terminal tldr]]
	- sudo apt install tldr
	- usage:
		- tldr <sudo>
	- notes:
		- tldw for videos
- [[terminal neofetch]]
	- sudo apt install neofetch
	- usage:
		- neofetch
	- notes:
		- displays distro logo and system info
- [[terminal tmux]]
	- sudo apt install tmux
	- usage:
		- tmux
		- exit
	- notes:
		- open multiple terminals in a single window
- [[terminal wikit]]
	- wikit can be used to parse wikipedia text in the command line, try installing and see how it works, looks pretty neat...
	- ```bash
	  sudo nala install -y nodejs
	  sudo nala install -y npm
	  sudo npm install wikit -g
	  ```
- [[terminal ddgr]]
	- duckduckgo searches from terminal
	- ```terminal
	  sudo apt-get install build-essential unzip -y
	  wget https://github.com/jarun/ddgr/archive/refs/tags/v2.1.zip
	  unzip file, then go to folder with terminal, then type: sudo make install
	  ```
	- usage:
		- ddgr <search phrase>
		- type number of search item and hit enter to launch it in browser
		- q to exit or hit enter twice
		- ? to see options