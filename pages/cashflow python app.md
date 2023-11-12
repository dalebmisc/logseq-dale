# features
	- Ingests transactions from bank / credit card accounts
	- Forecasts future cash flows by account and in total
		- Cashflows are tracked to date ranges
		- Forecasts are tracked to versions such as when run
		- Need to apply forecasts to updated balances
		- Today I update cashflows if they happened or if I am changing my plan, how do I want this to work in my app
	- Compares actual cash flows to forecasts
	- Lots of cool graphs
- # program
	- DOING create shell script that sets up environment and launches streamlit app
	  :LOGBOOK:
	  CLOCK: [2023-11-12 Sun 12:47:57]
	  :END:
		- ```terminal
		  #!/bin/bash
		  
		  # launch_cashflow.sh
		  
		  # Create conda environment
		  conda create --name cashflow python=3.12
		  
		  # Activate it
		  conda activate cashflow
		  
		  # Install packages
		  pip install numpy pandas matplotlib plotly seaborn streamlit icecream pretty_errors
		  
		  # Run the streamlit app
		  streamlit run cashflow.py
		  ```
			- ```
			  Instructions to Use the Script:
			  Save the Script: Copy the above script into a file named launch_cashflow.sh.
			  
			  Make the Script Executable:
			  
			  Run chmod +x launch_cashflow.sh in your terminal. This command makes the script executable.
			  Run the Script:
			  
			  Execute the script by running ./launch_cashflow.sh in your terminal.
			  
			  Notes:
			  Python Version: Adjust the Python version in the script if needed.
			  Package Versions: If specific versions of packages are required, specify them in the install commands (e.g., pip install pandas==1.3.0).
			  Conda Activation: If conda activate doesn't work in the script, you might need to initialize Conda in your shell or use source activate depending on your Conda setup.
			  Script Location: Ensure that cashflow.py is in the directory where you run the script, or provide the full path to the file in the script.
			  ```
		- desktop shortcut: cashflows.desktop
			- ```linux
			  Create the Desktop Entry File:
			  
			  Open a text editor and create a new file with the following content:
			  
			  [Desktop Entry]
			  Type=Application
			  Name=Cashflow App
			  Exec=/path/to/your/launch_cashflow.sh
			  Icon=/path/to/your/icon.png
			  Terminal=false
			  Categories=Utility;
			  Replace /path/to/your/launch_cashflow.sh with the full path to your shell script.
			  
			  Replace /path/to/your/icon.png with the path to an icon image you want to use for this shortcut. This should be a .png or .svg file.
			  
			  Save the File:
			  
			  Save this file on your desktop or in a directory of your choice with a .desktop extension, like cashflow.desktop.
			  2. Make the Desktop Entry Executable
			  Right-click on the file and go to Properties > Permissions.
			  Check the box that says “Allow executing file as program” or use the terminal command chmod +x /path/to/cashflow.desktop.
			  3. Test the Desktop Entry
			  Double-click the desktop entry to see if it launches your script correctly.
			  4. Pin to Dock
			  If your desktop environment supports dragging and dropping, you should be able to drag the .desktop file to the dock.
			  If this doesn't work, you might need to use specific features of your desktop environment. For example, in GNOME, you can open the application through the Activities overview and then right-click the icon in the dock and select 'Add to Favorites'.
			  ```