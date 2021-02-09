# Base (Modular) Flutter App example docs

This documentation provides overview of how to prepare and build a new Flutter app using Remedi's custom modules.

## Getting Started

When creating a mobile app for a new Remedi project, first create Flutter app using standard flow, and then add basic
functionality (e.g. Networking, State Management, Authentication, etc.) using corresponding modules.

### Android Package name / iOS Bundle ID naming convention

`com.remedi.PROJECT_NAME`

Steps to change, if already created:

- Find and replace in VSCode
- Change manually in Xcode: Runner > Targets > General > Bundle Identifier
- Change manually in Android Studio: Android view > app > java > Show Options Menu > uncheck Compact Middle Packages >
  xxx.app_template > Refactor > Rename

### App name

Steps to chage app name:

- for iOS -- `ios/Runner/Info.plist` file > value for `Bundle name` key
- for Android -- `android/app/src/main/AndroidManifest.xml` file > value for `android:label` key

### Flavors

Add `dev` and `prod` flavors to Android and iOS so that environment variables could be defined later for `kakao_app_key`
and `branch_key`.

Eventually dev app should be able to be run using following command:

```
flutter run --flavor=dev -t lib/main-dev.dart
```

### Android specific configuration

- Signing Key

Find Signing Key hash and save it in Kakao Developer project's console in order to use Kakao Login.

Debug hash could be found using following
command `keytool -exportcert -alias androiddebugkey -keystore ~/.android/debug.keystore -storepass android -keypass android | openssl sha1 -binary | openssl base64`
Release hash could be found using following
command `keytool -exportcert -alias <release_key_alias> -keystore <release_keystore_path> | openssl sha1 -binary | openssl base64`

### iOS specific configuration

- Sign in with Apple

Configure Sign in with Apple on Apple Developer website and add Sign in with Apple capability to Xcode.
See [sign_in_with_apple Flutter package's](https://pub.dev/packages/sign_in_with_apple) Integration section for detailed
flow.

## Remedi custom modules

TODO

1. View Model
2. Networking
3. Splash screen
4. Version check and force update screen
5. Kakao login
6. Apple login
7. Email login
8. Permission check
9. Firebase analytics, crashlytics, performance
10. Logging
11. Deep Links

## Resources

[Splash Screen in Flutter Apps](https://flutter.dev/docs/development/ui/advanced/splash-screen)

[Kakao SDK for Android](https://developers.kakao.com/docs/latest/en/getting-started/sdk-android)

[Kakao SDK for iOS](https://developers.kakao.com/docs/latest/en/getting-started/sdk-ios)

[kakao_flutter_sdk Flutter package](https://pub.dev/packages/kakao_flutter_sdk)

[kakao_flutter_mirror Flutter package](https://pub.dev/packages/kakao_flutter_mirror)

[Flavors for Flutter](https://flutter.dev/docs/deployment/flavors)
