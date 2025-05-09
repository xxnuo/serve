VERSION := 3.34.1

build:
	source .venv/bin/activate && \
	export GOARCH=arm64 && \
	python3 setup.py sdist && \
	unset GOARCH && \
	cd dist && \
	tar -xzvf jina-$(VERSION).tar.gz && \
	rm -r ../../videorag/clip/jina && \
	cp -r ./jina-$(VERSION) ../../videorag/clip/jina

default: build
.PHONY: build