#!/bin/sh

SD=$(cd "$(dirname "$0")"; pwd -P)
WD="$(pwd)"
SCRIPT=$(basename "$0")
SCRIPT_NAME=${SCRIPT%.*}
SCRIPT_EXTENSION=${SCRIPT##*.}
SELF=$SD/$SCRIPT

#/////////////////////////

APP_JAVA="$(which java)"

#/////////////////////////

set -eu

#/////////////////////////

if [ ! -e "$APP_JAVA" ] ; then
    echo "The executable 'java' wasn't found!"
    exit
fi

#/////////////////////////

cd "$SD/"

#/////////////////////////

$APP_JAVA -jar $SD/input-cache/publisher.jar -ig ig.ini

#/////////////////////////

cd "$WD/"

#/////////////////////////