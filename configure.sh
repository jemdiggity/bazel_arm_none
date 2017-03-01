#!/usr/bin/env bash

set -e
set -o pipefail

# Find out the absolute path to where ./configure resides
pushd `dirname $0` > /dev/null
SOURCE_BASE_DIR=`pwd -P`
popd > /dev/null

PLATFORM="$(uname -s | tr 'A-Z' 'a-z')"

function is_linux() {
  if [[ "${PLATFORM}" == "linux" ]]; then
    true
  else
    false
  fi
}

function is_macos() {
  if [[ "${PLATFORM}" == "darwin" ]]; then
    true
  else
    false
  fi
}

function bazel_clean_and_fetch() {
    bazel clean --expunge
    bazel fetch ...
}

bazel_clean_and_fetch

echo "Configuration finished"
