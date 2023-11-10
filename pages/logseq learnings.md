- links
	- can update settings so when you leave the line the brackets aren't shown, makes text nicer to read
	- links will create a page that can be selected with all content for that topic
	- when in doubt use a link
	- using spaces in link names are more reasonable
	- try to keep the tags and links separate
	- [[todo]] page is an example
- tags
	- Use tags to help bundle things together (such as somebody's name that you want to talk about the line you are writing and you remove the tag when you are done, 'research' if you want to learn more but don't want a to do item, or idea for ideas you have, etc.) or filter them
	- avoid multi-word tags otherwise you will need to use hash and bracket such as #[[halloween night]]
	- can install the tags extension which make it easy to see all your tags, sort them, and view the content using the tags
	- can add colors to tags by editing the custom them css file in settings, here is a sample line
		- /* Color names https://www.w3schools.com/cssref/css_colors.asp */
		- a.tag[data-ref="dairen"] { background-color: purple !important; }
		- a.tag[data-ref="test"] { background-color: gold !important; color: black !important; }
-
- {{renderer :todomaster}} [[todo progress]]
- Test todo list {{renderer :todomaster}} {{renderer :wordcount_}} [[todo progress]]
  id:: 6545de18-dc84-4dee-b21b-a3a53a78a295
	- DONE haricut
	  DEADLINE: <2023-11-04 Sat 1 PM>
	  :LOGBOOK:
	  CLOCK: [2023-11-04 Sat 07:11:29]--[2023-11-04 Sat 07:11:30] =>  00:00:01
	  CLOCK: [2023-11-04 Sat 07:11:30]--[2023-11-04 Sat 08:14:14] =>  01:02:44
	  :END:
	- DONE #dairen show logseq
	  :LOGBOOK:
	  CLOCK: [2023-11-04 Sat 08:17:20]--[2023-11-04 Sat 08:17:21] =>  00:00:01
	  :END:
	- DONE #dairen send more money for mortgage payment
	  SCHEDULED: <2023-11-05 Sun 8:40>
	  :LOGBOOK:
	  CLOCK: [2023-11-04 Sat 08:17:34]--[2023-11-04 Sat 08:17:38] =>  00:00:04
	  :END:
	- test all extensions to see what to keep {{renderer :todomaster}} [[todo progress]]
		- DONE heatmap - keep for now, looks like a nice compact view of activity
		  :LOGBOOK:
		  CLOCK: [2023-11-04 Sat 20:41:04]--[2023-11-04 Sat 20:41:05] =>  00:00:01
		  :END:
		- DONE graph analysis - graph at this point doesn't have much so remove, maybe look at it later
		- DONE interstitial journal - try it out for a while, see if it is useful
			- <ctrl> + t inserts timestamp at start of line
			- <ctrl> + <shift> + t inserts a head character and then the time so the line is bolded
		- DONE agenda - ui is very nice so keep for now and see if I use it for anything
		  :LOGBOOK:
		  CLOCK: [2023-11-04 Sat 20:45:36]--[2023-11-05 Sun 15:23:45] =>  18:38:09
		  :END:
		- DONE logseq-mergepages-plugin, seems like this can be useful later for creating aliases and 'joining' pages with different names should that occur, more useful for work I suspect
		- DONE calendar2 - decided not to bother getting a link to google calendar
		- DONE toc - remove for now, see how the built in [[Contents]] feature works
		- TODO automatic links - doesn't seem to be working, try again later...
		- DONE helium - can be useful I believe
			- Right-click the block the video is in, then select 'start float', then the video will now go past the top of the screen in case you are busy journaling under the video with a lot of text that would normally fill up the screen and push your video up and off the viewable area
		- DONE git
		- DONE automatic format url title - keep, does a nice job of adding an icon and formatting the title to be shorter
		- DONE logtools - keep, some neat features
			- kanban
				- a kanban #.v-kanban
					- 'TO DO'
						- task 1
						- task 2
					- 'IN PROGRESS'
						- task 3
						- task 4
						- task 5
			- #.v-eisenhower-matrix
				- [[TODO]]
					-
					-
					-
				- [[DECIDE]]
					-
					-
					-
				- [[DELEGATE]]
					-
					-
					-
				- [[ELIMINATE]]
					-
					-
					-
			- #.v-self-border self border
				- child 1
				- child 2
				- #.v-border-child border chile
					- child 1
					- child 2
					- #.v-self-border-child self border child
						- child 1
						- child 2
			- #.v-gallery-fit-col2
				- https://imgs.search.brave.com/W_rppqX9eYPnehvj11O5XACRdv0DLnZ-tPBnlu0I-no/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTI3/MDEyMTI1OS9waG90/by9zcG9va3ktaGFs/bG93ZWVuLXNreS5q/cGc_cz02MTJ4NjEy/Jnc9MCZrPTIwJmM9/S21CNFFha19WM2Vf/SWZmN0UtS1hOT0VY/NUItOGdaR2ZwYXg1/QUducC1zST0
			- `#.v-gallery` and put links to images in separate children blocks (by default the images are displayed as 200x200px)
			- options:
			- `-col2` to `-col7` : defnine the number of columns, images size will auto adjust
				- `-w100`, `-w200`, `-w300`,`-w400` : adjust width of each pic (fixed numbers in px)
				- `-fit` : fit width
				- `-h300` or `-h400` to change the height, default is 200px
				- append these suffixes to the main tag, so for instance : `#.v-gallery-col5` creates a grid of 5 columns, `#.v-gallery-w300` creates a gallery where each pic is 300 pixels wide, etc
			- demo: `#.v-gallery-fit`
			- procons #.v-kanban
				- #like
					-
				- #dislike
			- #.v-columns-2
				- one
				- two
				- three
				- four
			- #.v-columns-3
				- one
				- two
				- three
				- four
				- five
				- six
			- #.v-columns-4
				- one
				- two
				- three
				- four
				- five
				- six
				-
		- DONE markdown table editor - remove for now, look at it later if I am using markdown tables
		- TODO gpt-3 - throwing an error, try again later...
			- can use gpt-3.5-turbo, gpt-4, dalle so see info for plugin
		- DONE tabs - seems like it can be useful to move through content
			- <ctrl> + click a page name to add a tab
		- DONE emoji picker - keep, nice option
			- </> + 'emoji picker' then select emoji
				- 🤪
		- DONE link preview - keep for now, seems to be useful to see the link preview
		- DONE kanban - remove, ogtools has some kanban [[templates]] which I added
		- DONE wordcount - gimicky but kinda cool, keep for now {{renderer :wordcount_}}
			- </> + 'word count' + <enter> to show the info
		- DONE markmap - keep, a pretty useful way to see how something is laid out
		- DONE movie properties - cool enough to keep for now
			- [[halloween]]
			- create a page for the movie, then go to the page and right click the movie name, then select 'insert movie properties'
				- for halloween I just entered halloween as the text and when I selected the option I was presented with a list of movies to choose from
				- can also insert tv, book, person properties
		- DONE case converter - can be pretty useful
		  :LOGBOOK:
		  CLOCK: [2023-11-05 Sun 15:37:43]--[2023-11-05 Sun 15:37:46] =>  00:00:03
		  :END:
			- right click the block and select the option
				- THIS IS A [[TEST]] OF THE EMERGENCY BROADCAST SYSTEM
				- this is a [[test]] of the emergency broadcast system
				- This Is a [[Test]] of the Emergency Broadcast System
				- This is a [[test]] of the emergency broadcast system
		- DONE block calendar - removed as it just seems to navigate to a journal page when clicking a day.  I can do this with today's journal from the tool bar.
		-
	- TODO test linking to a part in a pdf
	  :LOGBOOK:
	  CLOCK: [2023-11-04 Sat 18:59:36]--[2023-11-04 Sat 18:59:37] =>  00:00:01
	  :END:
- logseq videos:
  :LOGBOOK:
  CLOCK: [2023-11-04 Sat 07:11:36]--[2023-11-04 Sat 07:11:39] =>  00:00:03
  :END:
	- DONE {{video https://www.youtube.com/watch?v=TB9JZEN49SM&t=299s}}
	- TODO {{video https://www.youtube.com/watch?v=7yVdh7ITvz4}}
		- <ctrl> + <shift> + y will enter the current timestamp in the video as shown below, and when clicking it you will go directly to that place in the video
		- {{youtube-timestamp 669}} Helium plugin
- dale test a flashcard #card
  card-last-score:: 1
  card-repeats:: 1
  card-next-schedule:: 2023-11-05T06:00:00.000Z
  card-last-interval:: -1
  card-ease-factor:: 2.5
  card-last-reviewed:: 2023-11-04T14:20:01.270Z
	- 1 + 1 = {{cloze 2}}
	- the capital city of saskatchewan is {{cloze regina}}
	- the capital city of province {{cloze saskatchewan}} is regina
- ### Miscellaneous
	- #### pound sign
		- `#10` use back ticks if you want to use pound without it being a tag
	- #### code block
		- ```python
		  ```
	- #### emojis
		- /emoji to get emoji picker
- ### Queries
	- ### Default queries
		- Add to config.edn and they show on journal
			- See example on combiningminds knowledge's videlogseq
	- ### Queries
		-