VERSION := 3.34.1

build:
	source .venv/bin/activate && \
	python3 setup.py sdist && \
	cd dist && \
	tar -xzvf jina-$(VERSION).tar.gz && \
	rm -r ../../videorag/clip/jina && \
	cp -r ./jina-$(VERSION) ../../videorag/clip/jina

default: build
.PHONY: build