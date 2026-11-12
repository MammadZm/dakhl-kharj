#!/usr/bin/env bash
# نیازمندی‌ها: Node 20+، JDK 21 و Android SDK (یا Android Studio)
set -e
npm install
[ -d android ] || npx cap add android
npx capacitor-assets generate --android || true
sed -i.bak 's/android:allowBackup="true"/android:allowBackup="false"/' android/app/src/main/AndroidManifest.xml && rm -f android/app/src/main/AndroidManifest.xml.bak
npx cap sync android
(cd android && chmod +x gradlew && ./gradlew assembleDebug)
echo "APK: android/app/build/outputs/apk/debug/app-debug.apk"
