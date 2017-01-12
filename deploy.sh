#!/bin/bash

if [ "$TRAVIS_TAG" == "" ]; then
    exit
fi

mkdir -p ~/.dzil
cat <<EOF > ~/.dzil/config.ini
[%PAUSE]
username = FASTLY
password = $PAUSE_PASS
EOF

VERSION=$(echo $TRAVIS_TAG | sed -e 's/^v//')

dzil build
echo y | V=$VERSION dzil release
