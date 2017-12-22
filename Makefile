.PHONY: bundle run

default: run

bundle:
	@bundle install --path .vendor/bundle
	@mkdir log && touch log/development.log

run:
	@./bin/run

test:
	@./bin/test

migrate:
	@./bin/migrate

console:
	@./bin/console
