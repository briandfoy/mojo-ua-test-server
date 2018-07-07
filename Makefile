HYPNOTOAD ?= hypnotoad
SERVER=bin/static-file-server

.PHONY: start
start:       ## Start the server in the background
	$(HYPNOTOAD) $(SERVER)

.PHONY: start-fore
start-fore:  ## Start the server in the foreground
	$(HYPNOTOAD) $(SERVER)

.PHONY: stop
stop:        ## Stop the server
	$(HYPNOTOAD) --stop $(SERVER)

.PHONY: test
test:        ## Start the server, test it, and exit
	$(HYPNOTOAD) --test $(SERVER)

.PHONY: html-lint
html-lint:   ## Check the HTML under html/

######################################################################
# https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help ## Show all the Makefile targets with descriptions
help: ## show a list of target
	@grep -E '^[a-zA-Z][/a-zA-Z0-9_.-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
