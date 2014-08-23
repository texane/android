#!/usr/bin/env sh
. ./top.sh
sudo $ADT_DIR/sdk/platform-tools/adb install $SIGNED_APK_PATH
