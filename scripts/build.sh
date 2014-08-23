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

$ADT_DIR/sdk/tools/zipalign -v 4 $UNSIGNED_APK_PATH $SIGNED_APK_PATH
