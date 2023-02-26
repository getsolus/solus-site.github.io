SHELL = /bin/bash

local:
	hugo server --watch --disableFastRender --ignoreCache

deploy:
	hugo --quiet --cleanDestinationDir --destination public-deployed/
	mv public-deployed/podcasts/sundays-with-solus-mp3/index.html public-deployed/podcasts/sundays-with-solus-mp3.xml
	mv public-deployed/podcasts/sundays-with-solus-ogg/index.html public-deployed/podcasts/sundays-with-solus-ogg.xml
	rmdir public-deployed/podcasts/sundays-with-solus-{mp3,ogg}
	rm -r public-deployed/podcasts/{page,index}*

setup:
	git submodule init
	sudo eopkg install hugo sassc

sync:
	git submodule sync
	git submodule update --force --recursive --remote --rebase

help:
	@echo "deploy    - Create the deployed form of site. Not particularly useful for those not able to deploy the site."
	@echo "local     - Run the Solus Site locally."
	@echo "setup     - Install necessary tooling for minification."
	@echo "sync      - Update git submodules and update assets."
