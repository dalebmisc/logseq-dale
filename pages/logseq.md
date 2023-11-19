## #[[keyboard shortcuts]]
	- tt toggles light, dark mode
	- tr toggles the right panel
	- tl toggles the left panel
	- tw togges wide mode
	- td seems to turn off some margin?? markers
- ## #links
	- can update settings so when you leave the line the brackets aren't shown, makes text nicer to read
	- links will create a page that can be selected with all content for that topic
	- when in doubt use a link
	- using spaces in link names are more reasonable
	- try to keep the tags and links separate
	- [[linux]] page is an example
- ## #tags
	- Use tags to help bundle things together (such as somebody's name that you want to talk about the line you are writing and you remove the tag when you are done, 'research' if you want to learn more but don't want a to do item, or idea for ideas you have, etc.) or filter them
	- avoid multi-word tags otherwise you will need to use hash and bracket such as #[[halloween night]]
	- can install the tags extension which make it easy to see all your tags, sort them, and view the content using the tags
	- can add colors to tags by editing the custom them css file in settings, here is a sample line
		- {{renderer :linkpreview,https://www.w3schools.com/cssref/css_colors.asp}}
		- a.tag[data-ref="dairen"] { background-color: purple !important; }
		- a.tag[data-ref="test"] { background-color: gold !important; color: black !important; }
- ## `#todo`
	- {{renderer :todomaster}}
		- Test todo list {{renderer :todomaster}} {{renderer :wordcount_}}
		  id:: 6545de18-dc84-4dee-b21b-a3a53a78a295
			- DONE haricut #deadline
			  DEADLINE: <2023-11-04 Sat 1 PM>
			  :LOGBOOK:
			  CLOCK: [2023-11-04 Sat 07:11:29]--[2023-11-04 Sat 07:11:30] =>  00:00:01
			  CLOCK: [2023-11-04 Sat 07:11:30]--[2023-11-04 Sat 08:14:14] =>  01:02:44
			  :END:
			- DONE #dairen show logseq
			  :LOGBOOK:
			  CLOCK: [2023-11-04 Sat 08:17:20]--[2023-11-04 Sat 08:17:21] =>  00:00:01
			  :END:
			- DONE #dairen send more money for mortgage payment #scheduled
			  SCHEDULED: <2023-11-05 Sun 8:40>
			  :LOGBOOK:
			  CLOCK: [2023-11-04 Sat 08:17:34]--[2023-11-04 Sat 08:17:38] =>  00:00:04
			  :END:
			- WAITING I am waiting #waiting
- ## #flashcards
	- dale #test a flashcard #card
	  card-last-score:: 1
	  card-repeats:: 1
	  card-next-schedule:: 2023-11-19T06:00:00.000Z
	  card-last-interval:: -1
	  card-ease-factor:: 2.5
	  card-last-reviewed:: 2023-11-19T00:58:08.862Z
	  collapsed:: true
		- 1 + 1 = {{cloze 2}}
		- the capital city of saskatchewan is {{cloze regina}}
		- the capital city of province {{cloze saskatchewan}} is regina
- ## miscellaneous
	- ### pound sign
		- `#10` use back ticks if you want to use pound without it being a tag
	- ### #[[code block]]
		- ```python
		  ```
	- ### #emojis
		- /emoji to get emoji picker
- ## #logseq-queries
	- ### Default queries
		- Add to config.edn and they show on journal {{renderer :todomaster}}
			- See example on combiningminds knowledge's video 'logseq tutorial 5 tips...'
			- DONE look up some default queries
		- ```edn
		     {:title "📅 Priority `A` TODO"
		      :query [:find (pull ?h [*])
		              :in $ ?start ?limit
		              :where
		              [?h :block/priority "A"]
		  			(or
		               [?h :block/marker "TODO"]
		               [?h :block/marker "DOING"]
		               [?h :block/marker "NOW"]
		               [?h :block/marker "LATER"])
		              ]
		      :result-transform (fn [result]
		                          (sort-by (fn [h]
		                                     (get h :block/priority "Z")) result))
		      :group-by-page? true
		      :inputs [:100d :14d-after]
		      :collapsed? false}
		  
		     {:title "📅 Priority `B` TODO"
		      :query [:find (pull ?h [*])
		              :in $ ?start ?limit
		              :where
		              [?h :block/priority "B"]
		  			(or
		               [?h :block/marker "TODO"]
		               [?h :block/marker "DOING"]
		               [?h :block/marker "NOW"]
		               [?h :block/marker "LATER"])
		              ]
		      :result-transform (fn [result]
		                          (sort-by (fn [h]
		                                     (get h :block/priority "Z")) result))
		      :group-by-page? true
		      :inputs [:100d :14d-after]
		      :collapsed? false}
		  
		     {:title "📅 Priority `C` TODO"
		      :query [:find (pull ?h [*])
		              :in $ ?start ?limit
		              :where
		              [?h :block/priority "C"]
		  			(or
		               [?h :block/marker "TODO"]
		               [?h :block/marker "DOING"]
		               [?h :block/marker "NOW"]
		               [?h :block/marker "LATER"])
		              ]
		      :result-transform (fn [result]
		                          (sort-by (fn [h]
		                                     (get h :block/priority "Z")) result))
		      :group-by-page? true
		      :inputs [:100d :14d-after]
		      :collapsed? false}
		     
		     {:title "📅 NEXT2"
		      :query [:find (pull ?h [*])
		              :in $ ?start ?limit
		              :where
		              [?h :block/marker ?marker]
		              [(contains? #{"NOW" "LATER" "TODO"} ?marker)]
		              ; I want to see TODOs from all pages, not just journals
		              ; and I ignore start and limit, just show all.
		              ; [?h :block/page ?p]
		              ; [?p :block/journal? true]
		              ; [?p :block/journal-day ?d]
		              ; [(>= ?d ?start)]
		              ; [(< ?d ?limit)]
		  	]
		      :inputs [:100d :7d-after]
		      :collapsed? false}
		     {:title "🔨 Ongoing tasks"
		      :query [:find (pull ?h [*])
		              :where
		              [?h :block/marker ?m]
		              [(contains? #{"NOW" "DOING"} ?m)]]
		      :collapsed? false}
		     {:title "🗓 Incoming tasks"
		      :query [:find (pull ?h [*])
		              :in $ ?start ?next
		              :where
		              [?h :block/marker ?m]
		              [(contains? #{"LATER" "TODO"} ?m)]
		              (or-join [?h ?d]
		                (and
		                  [?h :block/page ?p]
		                  [?p :block/journal? true]
		                  [?p :block/journal-day ?d])
		                [?h :block/scheduled ?d]
		                [?h :block/deadline ?d])
		              [(> ?d ?start)]
		              [(< ?d ?next)]]
		      :inputs [:today :7d-after]
		      :collapsed? false}
		     {:title "🧰 Now3"
		      :query [:find (pull ?b [*])
		              :where
		              (task ?b #{"NOW" "DOING"})]
		      :collapsed? false}
		     {:title "📅 Queued up"
		      :query [:find (pull ?h [*])
		              :in $ ?start ?next
		              :where
		              [?h :block/marker ?marker]
		              [(contains? #{"LATER" "TODO"} ?marker)]
		              (or-join [?h ?d]
		                (and
		                  [?h :block/ref-pages ?p]
		                  [?p :block/journal? true]
		                  [?p :block/journal-day ?d])
		                [?h :block/scheduled ?d]
		                [?h :block/deadline ?d])
		              (or
		                [(> ?d ?start)]
		                [(< ?d ?next)])]
		      :inputs [:730d-before :21d-after]
		      :collapsed? false}
		     {:title "⏳ Waiting"
		      :query [:find (pull ?b [*])
		              :where
		              (task ?b #{"WAITING"})]
		      :collapsed? true}]}
		  ```
	- ### Queries {{renderer :todomaster}}
		- DONE look at the logseq site section on queries
- ## #videos
  :LOGBOOK:
  CLOCK: [2023-11-04 Sat 07:11:36]--[2023-11-04 Sat 07:11:39] =>  00:00:03
  :END:
	- DONE {{video https://www.youtube.com/watch?v=TB9JZEN49SM&t=299s}}
		-
	- DONE {{video https://www.youtube.com/watch?v=7yVdh7ITvz4}}
		- <ctrl> + <shift> + y will enter the current timestamp in the video as shown below, and when clicking it you will go directly to that place in the video
		- {{youtube-timestamp 669}} Helium plugin
- ## #logseq-extensions
	- test all extensions to see what to keep {{renderer :todomaster}}
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
		- DONE toc - remove for now, see how the built in #Contents feature works
		- DONE automatic links - doesn't seem to be working, try again later...
			- ctrl + shift + L turns on auto parsing
			- ctrp + p parses the block #pdf
		- DONE helium - can be useful I believe
			- Right-click the block the video is in, then select 'start float', then the video will now go past the top of the screen in case you are busy journaling under the video with a lot of text that would normally fill up the screen and push your video up and off the viewable area
		- DONE git
		- DONE automatic format url title - keep, does a nice job of adding an icon and formatting the title to be shorter
		- DONE logtools - keep, some neat features
			- has some cool layouts that I likely won't use at home, but set them up as templates
		- DONE markdown table editor - remove for now, look at it later if I am using markdown tables
		- DONE gpt-3 - throwing an error, try again later... #openai #chatgpt
			- can use gpt-3.5-turbo, gpt-4, dalle so see info for plugin
			- assume this is related to my other todo on the chatgpt api, uninstall the plugin for now.
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
	- ## #pdf
		- adding link to #logseq, 2 methods:
			- drag #pdf onto #logseq where you want the link to appear
			- `/upload an asset`
		- on the #pdf that appears
			- highlight an area or block and it will add a reference to #logseq with a link that takes you to that spot of the #pdf
			- on the #pdf select the outline button, then the highlight tab to show a list of everything that is highlighted in the #pdf
			- click the annotations page button to display the page in #logseq with all the highlights
		- ![A Dimensional Modeling Manifesto - Kimball Group.pdf](../assets/A_Dimensional_Modeling_Manifesto_-_Kimball_Group_1699671695610_0.pdf)
	- ## #installation
	- The following script provides code to install AppImage apps and integrate them:
		- ((65593987-36fe-4b80-8a30-7414ce500782))
	- Download Logseq AppImage file, then chmod +x ... and run it