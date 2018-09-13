SHELL = /bin/bash

benchmark:
	hugo benchmark --quiet

deploy:
	hugo --quiet --cleanDestinationDir --destination public-deployed/
	rm -v public-deployed/index.html
	mv public-deployed/podcasts/sundays-with-solus-mp3/index.html public-deployed/podcasts/sundays-with-solus-mp3.xml
	mv public-deployed/podcasts/sundays-with-solus-ogg/index.html public-deployed/podcasts/sundays-with-solus-ogg.xml
	rmdir public-deployed/podcasts/sundays-with-solus-{mp3,ogg}
	rm -r public-deployed/podcasts/{page,index}*

local:
	hugo server --watch --disableFastRender

setup:
	git submodule init
	sudo eopkg install hugo rsync
	mkdir -p themes/solus/static/{css,js}
	mkdir -p themes/solus/static/imgs/help-center

sync:
	rm -rf solus-styling
	git submodule sync
	git submodule update --force --recursive --remote --rebase
	mkdir -p themes/solus/static/css/fonts
	mkdir -p themes/solus/static/js
	mkdir -p themes/solus/static/imgs/help-center
	find help-center-docs/* -maxdepth 0 ! -name "imgs" -type d -exec cp -Ru {} content/articles/ \;
	find content/articles/* -name "*.jpg" -type f -exec rm {} \;
	rsync -avx --delete help-center-docs/imgs/* themes/solus/static/imgs/help-center/
	rm -f themes/solus/static/css/website*.css
	rm -f themes/solus/static/js/{site,solbit}*
	cp -R solus-styling/build/*.css themes/solus/static/css/
	cp -R solbit/build/fonts/*.{eot,svg,ttf,woff} themes/solus/static/css/fonts/
	cp solbit/build/solbit*.min.js themes/solus/static/js/
	cp solus-webplatform-js/build/site*.min.js themes/solus/static/js/

help:
	@echo "deploy    - Create the deployed form of site. Not particularly useful for those not able to deploy the site."
	@echo "local     - Run the Solus Site locally."
	@echo "setup     - Install necessary tooling for minification."
	@echo "sync      - Update git submodules and update assets."