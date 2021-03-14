.PHONY: deps test

deps: deps.edn
	clojure -Stree

test:
	clojure -M:dev:test -m kaocha.runner

target/burp:
	@mkdir -p $(@D)
	clojure -M:native-image
