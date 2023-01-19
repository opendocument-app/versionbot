#!/bin/sh -l
# A script to update versions

# Configs
PACKAGE_DIR="./"
TARGET_VERSION="minor"


# Check and set package path if given
if [ ! -z $INPUT_PACKAGE_FILE_PATH ]; then
	PACKAGE_DIR="$(dirname $INPUT_PACKAGE_FILE_PATH)"
fi

# Check and set version if given
# else we use minor version
if [ ! -z $INPUT_VERSION_NAME ]; then
	TARGET_VERSION="$INPUT_VERSION_NAME"
fi


# Change to package dir
echo Changing to package dir
echo package dir: $PACKAGE_DIR
cd $PACKAGE_DIR

# bump version
echo Changing package version
echo target version: $TARGET_VERSION
npm version --no-git-tag-version $TARGET_VERSION