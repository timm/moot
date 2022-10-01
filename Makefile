MAKEFLAGS += --silent
SHELL=/bin/bash
R=$(shell git rev-parse --show-toplevel)

help: ## print help
	printf "\n#readme\nmake [OPTIONS]\n\nOPTIONS:\n"
	grep -E '^[a-zA-Z_\.-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*?## "}\
	               {printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2}'

y?=saving
itso: ## commit to Git. To add a message, set `y=message`.
	git commit -am "$y"; git push; git status
