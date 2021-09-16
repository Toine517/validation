build:	## Compile the source code to a binary
	go build

run:	## Run the application in background
	./awesome-api >./awesome.log 2>&1 &

stop:	## Stop the application
	pgrep awesome-api
	pgrep awesome-api | xargs kill -9

clean:	## Delete the binary and the log file
	rm awesome-api
	rm awesome.log

test:	## test the application
	curl http://localhost:9999 || echo TESTFAILED
	curl http://localhost:9999/health || echo TESTFAILED

help:	## display this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
