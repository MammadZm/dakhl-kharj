# ساخت APK اندروید — دخل‌وخرج من

## روش ۱: GitHub Actions (بدون نصب چیزی روی کامپیوتر)
1. این پوشه را در یک مخزن (repository) خصوصی GitHub بارگذاری کنید.
2. تب Actions ← «Build APK» ← Run workflow.
3. بعد از چند دقیقه، فایل `dakhl-kharj-apk` را از بخش Artifacts دانلود کنید (داخلش app-debug.apk است).

## روش ۲: روی کامپیوتر خودتان
نیازمندی: Node 20+‎، JDK 21، Android SDK (یا Android Studio)
    ./build-local.sh
یا برای Android Studio:
    npm install && npx cap add android && npx cap sync android && npx cap open android
و در Android Studio: Build ← Build APK(s).

## نصب روی گوشی
فایل APK را به گوشی منتقل کنید و در تنظیمات اجازه‌ی «نصب از منبع ناشناس» را برای فایل‌منیجر بدهید.
این APK با کلید debug امضا شده؛ برای استفاده‌ی شخصی کافی است. برای انتشار در مارکت باید با keystore خودتان نسخه‌ی release بسازید.

## نکته‌ها
- داده‌ها داخل خود برنامه رمزنگاری می‌شوند. قبل از حذف برنامه حتماً بکاپ بگیرید.
- اطلاعات نسخه‌ی وب (آدرس HTTPS) به این برنامه منتقل نمی‌شود؛ با بکاپ و بازگردانی منتقل کنید.
