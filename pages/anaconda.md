# anaconda installation
id:: 65594161-2581-49bb-8b99-f2f43bdf1525
	- download Anaconda: https://www.anaconda.com/download
		- on downloaded #file: chmod +x <name of file>
		- to run: sudo ./<name of file>
	- read license agreement:
		- <shift> + c to exit the agreement and agree to terms
	- add anaconda to $PATH
		- export PATH=/home/dale/anaconda3/bin:$PATH
		- can also add to /home/dale/.bashrc
			- ```
			  export PATH="<conda-path>:$PATH"
			  
			  E.g.
			  export PATH="/home/dale/anaconda3/bin:$PATH"
			  
			  ```
	- type 'conda' in terminal, the command should be recognized and provide info