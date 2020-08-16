#!/bin/bash

if [[ "$1" == "" ]]; then
    DEPS_ROOT="$PWD/deps"
else
    DEPS_ROOT="$1"
fi
if [[ -e $DEPS_ROOT/CMakeUtils ]]; then
    echo "Existing CMakeUtils directory, no need to clone"
else
    git clone https://github.com/Grauniad/CMakeUtils.git $DEPS_ROOT/CMakeUtils || exit 1
fi

declare -A bzipList
bzipList[cef_3_3]="http://opensource.spotify.com/cefbuilds/cef_binary_84.4.1%2Bgfdc7504%2Bchromium-84.0.4147.105_linux64_minimal.tar.bz2"

declare -A buildList
buildList[cef_3_3]='cef_binary_84.4.1+gfdc7504+chromium-84.0.4147.105_linux64_minimal'





source $DEPS_ROOT/CMakeUtils/build_tools/buildDepsCommon.sh || exit 1


DEPS_ROOT=$DEPS_ROOT DEPS_BUILD=$DEPS_BUILD make -e || exit 1
DEPS_ROOT=$DEPS_ROOT DEPS_BUILD=$DEPS_BUILD make -e install || exit 1
