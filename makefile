all: easypack easypack.gz
.PHONY: all
easypack:
	pkg index.js -o bin/easypack -t node13-linux-x64
easypack.gz: easypack
	gzip -c bin/easypack > bin/easypack.gz