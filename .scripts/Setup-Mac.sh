#!/bin/bash

pushd .. || exit 1

vendor/bin/Premake/macOS/premake5 --cc=clang --file=Build.lua xcode4

popd || exit 1