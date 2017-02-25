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
BAZEL_VERSION="0.4.4"

set +e
local_bazel_ver=$(bazel version 2>&1 | grep -i label | awk '{print $3}')

if [[ "$local_bazel_ver" == "$BAZEL_VERSION" ]]; then
  exit 0
fi

set -e

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # Install bazel.
    mkdir -p /bazel
    cd /bazel
    if [[ ! -f "bazel-$BAZEL_VERSION-installer-linux-x86_64.sh" ]]; then
        curl -fSsL -O https://github.com/bazelbuild/bazel/releases/download/$BAZEL_VERSION/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh
    fi
    chmod +x /bazel/bazel-*.sh
    /bazel/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh
    rm -f /bazel/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh

    # Enable bazel auto completion.
    grep bazel-complete.bash ~/.bashrc && echo "source /usr/local/lib/bazel/bin/bazel-complete.bash" >> ~/.bashrc
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
    if [[ $(which brew) == "" ]]; then
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi

    brew install bazel
    #don't fail if bazel upgrade returns error which it does if we're already at the latest version
    set +e
    brew upgrade bazel
    set -e
    brew switch bazel $BAZEL_VERSION
    #brew automatically install bash completion.
fi

