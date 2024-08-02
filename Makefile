MAKEFLAGS += --silent
SHELL=/bin/bash
Top=$(shell git rev-parse --show-toplevel)

help: ## print help
	#grep -E '^[a-zA-Z_\.-]+:.*?## .*$$' $(MAKEFILE_LIST) 
	gawk 'BEGIN {FS = ":.*?## "; print "\nmake: [OPTIONS]\n"}\
	          /^[^ \t].*##/     {printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

pull: ## download
	git pull

push: ## save
	echo -en "\033[33mWhy this push? \033[0m"; read x; git commit -am "$$x"; git push; git status
