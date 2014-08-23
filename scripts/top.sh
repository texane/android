#!/usr/bin/env sh

export ADT_DIR=$HOME/repo/android/adt-bundle-linux-x86_64-20131030
export WS_DIR=$HOME/repo/android/ws
export KEY_DIR=$HOME/repo/android/key
export PROJ_NAME=`basename $PWD`
export PKG_NAME=com.example.$PROJ_NAME
export SIGNED_APK_PATH=$PWD/bin/$PROJ_NAME.apk
export UNSIGNED_APK_PATH=$PWD/bin/$PROJ_NAME-release-unsigned.apk
