## Scratchpad
	-
- ## {{renderer :todomaster}} #[[todo progress]]
	- TODO Figure out how the aws code whisperer works
	- DONE  Can I get a good openai plugin #openai #chatgpt
		- Plugins seem to integrate with the api and it doesn't seem like me paying for chatgpt gives me access to the api beyond the free tier so I won't spend more time on this at this time.
	- DONE Look at tabnine
		- Looks like a possibility for the future, see what aws code whisperer can do
	- DONE install data wrangler
- ## settings
	- #### black formatter or others such as autopep8
		- [Powerful VSCode Tips And Tricks For Python Development And Design - YouTube](https://youtu.be/fj2tuTIcUys?si=teDGSSNKbpB13U0Q&t=446)
- ## extensions
	- data wrangler
- ## vscode installation
  id:: 65593d0c-b4bd-433b-b561-60004fdaaa5c
	- https://flathub.org/apps/com.visualstudio.code
	  id:: 65593c40-eef6-4285-bac5-01e000851736
	- download: microsoft visual studio code
	- double-click downloaded file to install it
	- if double-clicking doesn't work you may have to enter the following in the terminal on the downloaded file: chmod +x <name of file>
	- ```bash
	  #!/bin/bach
	  
	  sudo nala install dirmngr ca-certificates software-properties-common apt-transport-https curl -y
	  curl -fSsL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/vscode.gpg >/dev/null
	  echo deb [arch=amd64 signed-by=/usr/share/keyrings/vscode.gpg] https://packages.microsoft.com/repos/vscode stable main | sudo tee /etc/apt/sources.list.d/vscode.list
	  sudo nala update
	  sudo nala install code
	  ```