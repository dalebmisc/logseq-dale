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
			  ```
		- desktop shortcut: cashflows.desktop
			- ```linux
			  [Desktop Entry]
			  Type=Application
			  Name=Cashflow App
			  Exec=/path/to/your/launch_cashflow.sh
			  Icon=/path/to/your/icon.png
			  Terminal=false
			  Categories=Utility;
			  
			  ```