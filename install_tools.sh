#!/usr/bin/env bash

set -e

OSNAME=`uname -s`

if [ "$OSNAME" == "Darwin" ]; then
	if [[ $(which brew) == "" ]]; then
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi

	bash tools/install/install_bazel.sh
	bash tools/install/install_buildifier.sh
elif [ "$OSNAME" == "Linux" ]; then
	echo "Not implemented for Linux"
	exit 1
else
	echo "Not implemented for $OSNAME"
	exit 1
fi

echo "Finished."
