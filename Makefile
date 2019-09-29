.PHONY: rebuild build clean almostclean distclean

rebuild:	clean build

build:
	yarn run build

clean:
	yarn run clean

almostclean:	clean

distclean:	almostclean
