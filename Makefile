SHELL = /bin/bash

benchmark:
	hugo benchmark --quiet

deploy:
	hugo --quiet --destination public-deployed/
	rm -v public-deployed/index.html

local:
	hugo server --baseURL "http://127.0.0.1:1313" --watch --quiet

minifier:
	find public-deployed -name "*.html" -type f -exec \
		sh -c 'html-minifier "{}" --collapse-boolean-attributes --collapse-inline-tag-whitespace --collapse-whitespace --html5 --keep-closing-slash --output "{}" --remove-comments --remove-redundant-attributes --remote-tag-whitespace' \;

pull:
	git pull --rebase

setup:
	git submodule init
	sudo eopkg install hugo nodejs
	sudo npm install -g html-minifier
	mkdir -p themes/solus/static/{css,js}

submoduleupdate:
	git submodule update --remote --rebase

assetcopy:
	mkdir -p themes/solus/static/{css,js}
	cp -R solus-styling/build/* themes/solus/static/css/
	cp solus-webplatform-js/build/site.min.js themes/solus/static/js/

sync: submoduleupdate assetcopy

help:
	@echo "minifier  - Minify the public/ HTML."
	@echo "pull      - Pull / rebase latest changes"
	@echo "setup     - Install necessary tooling for minification."