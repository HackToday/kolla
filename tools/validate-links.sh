#!/bin/bash

REAL_PATH=$(python -c "import os,sys;print os.path.realpath('$0')")
cd "$(dirname "$REAL_PATH")/.."

if find . -type l -exec test ! -e {} \; -print | egrep '.*'; then
    exit 1
fi
