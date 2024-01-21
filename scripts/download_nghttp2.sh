#!/bin/bash

# If any commands fail, fail the script immediately.
set -ex

# Get the script directory and source the VERSIONS file
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source $SCRIPT_DIR/VERSIONS

# Clone the repository to the specified directory.
git clone --depth 1 --branch v${NGHTTP2_VERSION} https://github.com/nghttp2/nghttp2 $1
