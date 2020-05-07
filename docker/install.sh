#!/bin/bash
set -e

cd /usr/local/src/
git clone https://github.com/littlemole/$1.git

if [ "$BRANCH" == "ng"  ]; then

	cd $1 && git checkout ng
fi
SKIPTESTS="true" /usr/local/bin/build.sh $1
