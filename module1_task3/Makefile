build:	## build a new site
	hugo

clean:	## erase the output dir
	rm -r dist/

post:	## add a new poste POST_NAME with title POST_TITLE
	hugo new posts/$(POST_NAME).md
	sed -i -e 's/'"$(POST_NAME)"'/'"$(POST_TITLE)"'/g' content/posts/$(POST_NAME).md

help:	## display this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
