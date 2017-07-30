#!/bin/bash

artifacts_dir="$JENKINS_HOME/artifacts/$JOB_NAME"
mkdir -p "$artifacts_dir"
echo "Copying build artifacts of $BUILD_TAG to $artifacts_dir"
for file in "$@"; do
	cp "$file" "$artifacts_dir"
done
