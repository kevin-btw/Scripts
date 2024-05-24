#!/usr/bin/env bash

echo "============================================================"
echo "      Welcome to Android Open Source Project                "
echo "============================================================"
echo "Starting Sync"
echo "Warning: Repo is needed to be installed in prior of running this script"
read -r -p "Enter the branch name to sync: " branch
repo init -u "https://android.googlesource.com/platform/manifest.git" -b "${branch}"
echo "Starting Repo Sync"
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j13
