#!/bin/sh

docker run -ti --rm --name antora \
    -v $(pwd):/repo -w /repo/src/documentation antora/antora:1.1.1 \
    --clean --pull site.yml --stacktrace

touch docs/.nojekyll
touch docs/_/.nojekyll