.PHONY: deps test

deps: deps.edn
	clojure -Stree

test:
	clojure -M:dev:test -m kaocha.runner
