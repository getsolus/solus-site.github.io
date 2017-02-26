SHELL = /bin/bash

benchmark:
	hugo benchmark --quiet

deploy:
	hugo --i18n-warnings --quiet --destination public-deployed/
	rm -v public-deployed/index.html

local:
	hugo server --baseURL "http://127.0.0.1:1313" --i18n-warnings --watch --quiet --ignoreCache
setup:
	git submodule init
	sudo eopkg install hugo
	mkdir -p themes/solus/static/{css,js}
	mkdir -p themes/solus/static/imgs/help-center

sync:
	git submodule update --remote --rebase
	mkdir -p themes/solus/static/{css,js}
	mkdir -p themes/solus/static/imgs/help-center
	find help-center-docs/* -maxdepth 0 ! -name "imgs" -type d -exec cp -Ru {} content/articles/ \;
	cp -R help-center-docs/imgs/* themes/solus/static/imgs/help-center/
	cp -R solus-styling/build/* themes/solus/static/css/
	cp -R solbit/build/fonts themes/solus/static/css/
	cp solbit/build/solbit*js themes/solus/static/js/
	cp solus-webplatform-js/build/site.min.js themes/solus/static/js/

help:
	@echo "deploy    - Create the deployed form of site. Not particularly useful for those not able to deploy the site."
	@echo "local     - Run the Solus Site locally."
	@echo "setup     - Install necessary tooling for minification."
	@echo "sync      - Update git submodules and update assets."