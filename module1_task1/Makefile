build:
	hugo

clean:
	rm -r dist/

post:
	hugo new posts/$(POST_NAME).md
	sed -i -e 's/'"$(POST_NAME)"'/'"$(POST_TITLE)"'/g' content/posts/$(POST_NAME).md
