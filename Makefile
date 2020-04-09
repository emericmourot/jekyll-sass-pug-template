LIVERELAOD := true
WATCH := true
netlify: check-env
	bundle install
ifeq ($(JEKYLL_ENV),development)
	@echo [INFO] Building for DEV
	bundle exec jekyll build --config _config.yml,_config-development.yml
else ifeq ($(JEKYLL_ENV),staging)
	@echo [INFO] Building for STAGING
	bundle exec jekyll build --config _config.yml,_config-staging.yml
else
	@echo [INFO] Building for PRODUCTION
	bundle exec jekyll build
endif
install:
	bundle install
serve: install
	# Build for development target
	bundle exec jekyll serve --config _config.yml,_config-development.yml
build:
	# Build production target
	bundle exec jekyll build --config _config.yml
config:
	@echo ${LIVERELAOD}
	@echo ${WATCH}
check-env:
ifndef JEKYLL_ENV
	$(error JEKYLL_ENV is undefined)
else
	@echo [INFO] JEKYLL_ENV is set to $(JEKYLL_ENV)
endif
clean:
	rm -rf .sass-cache .pug-cache _site _src/.jekyll-cache 2>&1 > /dev/null