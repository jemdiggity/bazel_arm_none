#!/usr/bin/env bash
# Copyright 2015 The TensorFlow Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================
# Select bazel version.
BUILDIFIER_VERSION="0.4.3"

set -e
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    BUILDIFIER_DIR="buildifier"
    mkdir ${BUILDIFIER_DIR}
    curl -Ls https://github.com/bazelbuild/buildifier/archive/$BUILDIFIER_VERSION.tar.gz | \
        tar -C "${BUILDIFIER_DIR}" --strip-components=1 -xz
    pushd ${BUILDIFIER_DIR}

    bazel build buildifier:buildifier --spawn_strategy=standalone --genrule_strategy=standalone
    sudo cp bazel-bin/buildifier/buildifier /usr/local/bin/

    popd
    rm -rf ${BUILDIFIER_DIR}
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    #fixme buildifier formulae pull request pending from https://github.com/jemdiggity/homebrew-core
    brew install buildifier
    #don't fail if brew upgrade returns error which it does if we're already at the latest version
    set +e
    brew upgrade buildifier
    set -e
    brew switch buildifier $BUILDIFIER_VERSION
fi

