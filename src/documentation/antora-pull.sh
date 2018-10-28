#!/bin/sh

docker run -ti --rm --name antora -v $(pwd):/repo -w /repo/src/documentation antora/antora --pull site.yml
