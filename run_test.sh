#!/bin/sh

#export FASTLY_TEST_BASE_URL=184.106.83.217
#export FASTLY_TEST_BASE_PORT=80


#export FASTLY_TEST_BASE_URL=localhost
export FASTLY_TEST_BASE_URL=app-1-simon
export FASTLY_TEST_BASE_PORT=5500

export FASTLY_TEST_USER=testowner@example.com
export FASTLY_TEST_PASSWORD=password
export FASTLY_TEST_API_KEY=TESTAPIKEY

#for f in `ls t/*.t`; 
#for f in `ls t/admin.t`; 
for f in `ls t/full_login.t`; 
do
    echo "Running $f";
    perl -Ilib  -It "$f" $*
done
