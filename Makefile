SHELL = /bin/bash

benchmark:
	hugo benchmark --quiet

deploy:
	hugo --quiet --destination public-deployed/
	rm -v public-deployed/index.html

local:
	hugo server --baseURL "http://127.0.0.1:1313" --watch --quiet --ignoreCache

setup:
	git submodule init
	sudo eopkg install hugo nodejs
	sudo npm install -g html-minifier
	mkdir -p themes/solus/static/{css,js}

sync:
	git submodule update --remote --rebase
	mkdir -p themes/solus/static/{css,js}
	cp -R solus-styling/build/* themes/solus/static/css/
	cp -R solbit/build/fonts themes/solus/static/css/
	cp solbit/build/solbit.min.js themes/solus/static/js/
	cp solus-webplatform-js/build/site.min.js themes/solus/static/js/

help:
	@echo "minifier  - Minify the public/ HTML."
	@echo "pull      - Pull / rebase latest changes"
	@echo "setup     - Install necessary tooling for minification."
	@echo "sync      - Update git submodules and update assets."