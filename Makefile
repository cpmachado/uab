.PHONY: all serve install

all: serve

build:
	JEKYLL_ENV=production bundle exec jekyll build --trace

clean:
	bundle exec jekyll clean

install:
	bundle install

serve:
	bundle exec jekyll serve --incremental --livereload --open

