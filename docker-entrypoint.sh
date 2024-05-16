#!/bin/bash

echo "Starting to create release"
./gradlew clean assembleRelease


RELEASE_VERSION=$(date -Iminutes)
echo "Release version is $RELEASE_VERSION"

echo "Renaming release directory to release version"
mv ./app/build/outputs/apk/release ./app/build/outputs/apk/$RELEASE_VERSION

echo "Creating release_outputs directory"
mkdir -p /app/release_outputs

ls /app/release_outputs

echo "Copying release output to release_outputs"
cp -r ./app/build/outputs/apk release_outputs

ls release_outputs
echo "Build successful"