token=
team=
name=
github-token=
github-user=

npm=$(shell which npm)

install:
	$(npm) install

start:
	HUBOT_SLACK_TOKEN=${token} \
					  HUBOT_SLACK_TEAM=${team} \
					  HUBOT_SLACK_BOTNAME=${name} \
					  HUBOT_GITHUB_ORG=ngineerxiv \
					  HUBOT_GITHUB_REPO=ngineerxiv/dark-bot \
					  HUBOT_GITHUB_TOKEN=${github-token} \
					  HUBOT_GITHUB_USER=${github-user} \
					  bin/hubot --adapter slack

start-local:
	HUBOT_GITHUB_ORG=ngineerxiv \
					 HUBOT_GITHUB_REPO=ngineerxiv/dark-bot \
					 HUBOT_GITHUB_TOKEN=${github-token} \
					 HUBOT_GITHUB_USER=${github-user} \
					 ./bin/hubot
