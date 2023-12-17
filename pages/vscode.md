## Scratchpad
	-
- ## {{renderer :todomaster}}
	- TODO Figure out how the aws code whisperer works
	- DONE  Can I get a good openai plugin #openai #chatgpt
		- Plugins seem to integrate with the api and it doesn't seem like me paying for chatgpt gives me access to the api beyond the free tier so I won't spend more time on this at this time.
	- DONE Look at tabnine
		- Looks like a possibility for the future, see what aws code whisperer can do
	- -DONE install data wrangler
- ## settings
	- #### black formatter or others such as autopep8
		- [Powerful VSCode Tips And Tricks For Python Development And Design - YouTube](https://youtu.be/fj2tuTIcUys?si=teDGSSNKbpB13U0Q&t=446)
		- ```user/settings.json
		  {
		  "window.zoomLevel": 2
		  workbench.colorCustomizations:{
		  editorSuggestWidget.selectedBackground: setcolorvalue
		  sidebar.background: setcolor
		  list.activeSelectionBackground:
		  list.inactiveSelectionBackground:
		  list.focusBackground:
		  list.hoverBackground:
		  }
		  editor.fontFamily: "JetBrains Mono"
		  editor.fontSize: 14
		  editor.lineHeight: 1.5
		  breadcrumbs.enabled: false
		  explorer.compactFolders: false
		  files.insertFinalNewLine: true
		  extensions.ignoreRecommendations: true
		  files.autoSave: "afterDelay"
		  ```
- ## extensions
	- data wrangler
	- codium ai
	- python snippets
	- json to ts
	- pretty typescript errors
	- peacock
	- projects
	- error lens
	- auto open markdown preview
	- markdown all in one
	- code runner
	- jest
	- jest runner
	- better comments
	- colorize
	- output colorizer
	- polacode
	-
- ## theme
	- aura dracula spirit or aura spirit dracula
	- material icon theme
	- atom one dark theme
	- fluent icons
- ## vscode installation
  id:: 65593d0c-b4bd-433b-b561-60004fdaaa5c
	- #flatpak
		-
			- [Visual Studio Code | Flathub](https://omnivore.app/me/visual-studio-code-flathub-18be4dc103f)
			  collapsed:: true
			  site:: [Flathub - Apps for Linux](https://flathub.org/apps/com.visualstudio.code)
			  date-saved:: [[Nov 18th, 2023]]
			  id:: 44ae2570-be4d-438b-823f-5c410b277fe5
			- [Visual Studio Code | Flathub](https://flathub.org/apps/com.visualstudio.code)
			- {{renderer :linkpreview,[Server Error | Flathub](https://flathub.org/apps/com.visualstudio.code}})
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