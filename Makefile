token=
team=
name=
github-token=
github-user=
credential=./credentials/development

npm=$(shell which npm)

install:
	$(npm) install

start:
	./bin/hubot-slack $(credential)

start-local:
	./bin/hubot
