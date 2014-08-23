#!/usr/bin/env sh

# https://developer.android.com/training/basics/firstapp/creating-project.html
# create a new project

. ./top.sh

$ADT_DIR/sdk/tools/android create project \
--target 1 \
--name $PROJ_NAME \
--path $PWD --activity MainActivity \
--package $PKG_NAME
