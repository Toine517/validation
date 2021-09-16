# Simple GO web server

## Prerequisites
- Golang in v1.15.*
- NPM v7+ with NodeJS v14.* (stable)
- Python 3 with pip module

## Lifecycle
Lint, vérify the code

Build, compile the source code of the application awesome-api with the commande go build

Run, execute the application by executing the command ./awesome-api >./awesome.log 2>&1 &

Stop, stop the application by killing the process

Clean, remove binary and log file (awesome-api & awesome.log)

Test, simple test to verify the http server is up on the 9999 port

## make file targets
### lint
Catch errors before compilation

### build
Compile the go programme into awesome-api executable

### run
Execute the awesome.api executable

### stop
Kill the awesome.api process

### clean
Clean the project by erasing awesome-api executable and awesome.log file

### test
Do some simple test, both have to succeed

### help
Display the implemented targets with a short help

