#!/bin/sh
# Script that updates (and creates, if necessary) a bunch of
# testcases.
if [ ! -d testbank ]
then
    echo "testbank subdir doesn't exist, cloning it"
    hg clone http://hg.lizard.net/testbank
fi
if [ ! -d duifpolder ]
then
    echo "duifpolder subdir doesn't exist, cloning it"
    hg clone http://hg.lizard.net/duifpolder
fi


cd testbank;
hg pull -u

cd duifpolder;
hg pull -u
