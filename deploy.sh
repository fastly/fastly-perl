#!/bin/bash

if [ "$TRAVIS_TAG" == "" ]; then
    exit
fi

if [ "$PERLBREW_PERL" != "5.22" ]; then
    exit
fi

cpanm -nq Dist::Milla

mkdir -p ~/.dzil
cat <<EOF > ~/.dzil/config.ini
[%PAUSE]
username = FASTLY
password = $PAUSE_PASS
EOF

VERSION=$(echo $TRAVIS_TAG | sed -e 's/^v//')

echo "\ny" | V=$VERSION milla release
