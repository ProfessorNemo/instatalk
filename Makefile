RUN_ARGS := $(wordlist 2, $(words $(MAKECMDGOALS)), $(MAKECMDGOALS))

drop!:
	rails db:drop

initially:
	rails db:create
	rails db:migrate
	yarn install
	yarn build:css
	yarn build
	rails assets:precompile

rubocop:
	rubocop -A

run-console:
	bundle exec rails console

c: run-console

.PHONY:	db
