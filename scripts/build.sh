#!/usr/bin/env sh

# build an apk in release mode and sign it
# http://developer.android.com/tools/building/building-cmdline.html
# http://developer.android.com/tools/publishing/app-signing.html

. ./top.sh

ant release

jarsigner \
-verbose \
-sigalg SHA1withRSA -digestalg SHA1 \
-keystore $KEY_DIR/my-release-key.keystore \
$UNSIGNED_APK_PATH \
alias_name

rm $SIGNED_APK_PATH
$ADT_DIR/sdk/build-tools/19.1.0/zipalign -v 4 $UNSIGNED_APK_PATH $SIGNED_APK_PATH
