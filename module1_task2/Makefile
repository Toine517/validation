build:	## build a new site
	hugo

clean:	## erase the output dir
	rm -r dist/

post:	## add a new poste POST_NAME with title POST_TITLE
	hugo new posts/$(POST_NAME).md
	sed -i -e 's/'"$(POST_NAME)"'/'"$(POST_TITLE)"'/g' content/posts/$(POST_NAME).md

help:
	echo build: build a new site
	echo clean: erase the output dir
	echo post: add a new post
	echo help: display this help
