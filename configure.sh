#!/usr/bin/env bash

set -e
set -o pipefail

function bazel_clean_and_fetch() {
    bazel clean --expunge
    bazel fetch ...
}

bazel_clean_and_fetch

echo "Configuration finished"
