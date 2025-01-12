#!/bin/bash

pushd ..
vendor/bin/Premake/Linux/premake5 --cc=gcc --file=Build.lua gmake2
popd
