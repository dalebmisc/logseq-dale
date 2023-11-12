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
		  
		  # Create conda environment
		  conda create --name cashflow python=3.12
		  
		  # Activate it
		  conda activate cashflow
		  
		  # Install packages
		  pip install numpy pandas matplotlib plotly seaborn streamlit icecream pretty_errors
		  ```