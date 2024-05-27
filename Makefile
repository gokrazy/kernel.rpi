.PHONY: rebuild

all:

rebuild:
	go install ./cmd/gokr-rebuild-kernel
	gokr-rebuild-kernel
