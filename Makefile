SHELL = /bin/bash

local:
	hugo server --watch --disableFastRender --ignoreCache

setup:
	sudo eopkg install hugo sassc

help:
	@echo "local     - Run the Solus Site locally."
	@echo "setup     - Install necessary tooling for minification."
