.PHONY: rebuild

all:

rebuild:
	#GOBIN=$$PWD/_build sh -c '(cd ~/go/src/github.com/gokrazy/autoupdate && go install ./cmd/gokr-rebuild-kernel)'
	GOBIN=$$PWD/_build go install github.com/gokrazy/autoupdate/cmd/gokr-rebuild-kernel@latest
	(cd _build && ./gokr-rebuild-kernel -cross=arm64 -flavor=raspberrypi)
