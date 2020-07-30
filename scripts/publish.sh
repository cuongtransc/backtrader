#!/bin/bash

# BASE_DIR
BASE_DIR=$(dirname "$(readlink -f $0)")

cd $BASE_DIR/..

# Clean up old release
#rm -rf dist/*

# Build release
echo "Build lib"
python setup.py sdist bdist_wheel > /dev/null

# Upload release
twine upload --skip-existing dist/*

