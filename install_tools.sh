#!/usr/bin/env bash

if [[ $(which brew) == "" ]]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

bash tools/install/install_bazel.sh
bash tools/install/install_buildifier.sh

echo "Finished."
