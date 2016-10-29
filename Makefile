SHELL = /bin/bash

deploy:
	hugo --destination public-deployed/
	rm -v public-deployed/index.html

local:
	hugo server --baseURL "http://127.0.0.1:1313"

minifier:
	find public-deployed -name "*.html" -type f -exec \
		sh -c 'html-minifier "{}" --collapse-boolean-attributes --collapse-inline-tag-whitespace --collapse-whitespace --html5 --keep-closing-slash --output "{}" --remove-comments --remove-redundant-attributes --remote-tag-whitespace' \;

pull:
	git pull --rebase

setup:
	sudo eopkg install nodejs
	sudo npm install -g html-minifier

help:
	@echo "minifier  - Minify the public/ HTML."
	@echo "pull      - Pull / rebase latest changes"
	@echo "setup     - Install necessary tooling for minification."