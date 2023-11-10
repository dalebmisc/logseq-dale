- a Kanban #.v-kanban
  template:: kanban
	- `TO DO`
		- 1
		- 2
	- `IN PROGRESS`
		- 1
		- 2
	- `DONE`
		- 1
		- 2
- Wide Kanban #.v-kanban-wide
  template:: kanban-wide
	- `UNDER REVIEW`
		- 1
		- 2
	- `RETAKE`
		- 1
		- 2
	- `APPROVED`
		- 1
		- 2
	- `ARCHIVED`
		- 1
		- 2
	- `DROPPED`
		- 1
		- 2
- #.v-eisenhower-matrix
  template:: eisenhower-matrix
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
- procons #.v-kanban
  template:: proscons
  template-including-parent:: false
	- #like
		-
	- #dislike
		-
- daily journal
  template:: Daily Template
  template-including-parent:: false
	- ## [[TODO]] {{renderer :todomaster}}
		-
	- ## Scratchpad
		-
-