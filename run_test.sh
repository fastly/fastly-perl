#!/bin/sh

export FASTLY_TEST_BASE_URL=app-1
#export FASTLY_TEST_BASE_URL=localhost
export FASTLY_TEST_BASE_PORT=5500
export FASTLY_TEST_USER=testowner@example.com
export FASTLY_TEST_PASSWORD=password
export FASTLY_TEST_API_KEY=TESTAPIKEY

for f in `ls t/*.t`; 
do
    echo "Running $f";
    perl -Ilib  -It "$f" $*
done
