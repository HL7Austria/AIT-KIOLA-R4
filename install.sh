#!/bin/sh

# Prerequisites:
# Java; Node.js
# Optional: VS.Code; The FHIR Shorthand Extension

SD=$(cd "$(dirname "$0")"; pwd -P)
WD="$(pwd)"
SCRIPT=$(basename "$0")
SCRIPT_NAME=${SCRIPT%.*}
SCRIPT_EXTENSION=${SCRIPT##*.}
SELF=$SD/$SCRIPT

#/////////////////////////

APP_NPM="$(which npm)"

#/////////////////////////

set -eu

#/////////////////////////

if [ ! -e "$APP_NPM" ] ; then
    echo "The executable 'npm' wasn't found!"
    exit 1
fi

#/////////////////////////

if [ "$(whoami)" != "root" ] ; then
	echo "Sorry, you are not root"
	exit 1
fi

#/////////////////////////

cd "$SD/"

#/////////////////////////

echo "Install 'fsh-sushi'"
$APP_NPM install -g fsh-sushi

echo "Install 'jekyll'"
apt install -y jekyll

echo "Install 'fhir-ig-publisher'"
mkdir -p $SD/input-cache
wget -O "$SD/input-cache/publisher.jar" "https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar"

#/////////////////////////

echo "Done."

#/////////////////////////

cd "$WD/"

#/////////////////////////

# Then do build.sh 
# you can just open the index file in the output folder using