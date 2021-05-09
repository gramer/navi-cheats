TAG="\n\n\033[0;32m\#\#\# "
END=" \#\#\# \033[0m\n"


.PHONY: install-navi
install-navi: ## install-navi
	@echo ${TAG}starting${END}
	@brew install navi
	@echo ${TAG}completed${END}

.PHONY: test
test: ## test
	@echo ${TAG}starting${END}
	@navi --path .
	@echo ${TAG}completed${END}


.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


.DEFAULT_GOAL = help
