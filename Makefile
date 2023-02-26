SHELL = /bin/bash

local:
	hugo server --watch --disableFastRender --ignoreCache

deploy:
	hugo --quiet --cleanDestinationDir --destination public-deployed/
	rm -v public-deployed/index.html
	mv public-deployed/podcasts/sundays-with-solus-mp3/index.html public-deployed/podcasts/sundays-with-solus-mp3.xml
	mv public-deployed/podcasts/sundays-with-solus-ogg/index.html public-deployed/podcasts/sundays-with-solus-ogg.xml
	rmdir public-deployed/podcasts/sundays-with-solus-{mp3,ogg}
	rm -r public-deployed/podcasts/{page,index}*

setup:
	git submodule init
	sudo eopkg install hugo rsync

upmods:
	git submodule sync
	git submodule update --force --recursive --remote --rebase

syncstyling:
	rm -f themes/solus/static/css/website*.css
	cp -R solus-styling/build/*.css themes/solus/static/css/

syncsolbit: upmods
	cp -R solbit/build/fonts/*.{css,eot,svg,ttf,woff,woff2} themes/solus/static/css/fonts/


sync: syncstyling syncsolbit

help:
	@echo "deploy    - Create the deployed form of site. Not particularly useful for those not able to deploy the site."
	@echo "local     - Run the Solus Site locally."
	@echo "setup     - Install necessary tooling for minification."
	@echo "sync      - Update git submodules and update assets."
