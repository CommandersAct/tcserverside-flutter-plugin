# Firebase Integration Guide for CommandersAct Firebase Destination (Flutter Runner)

> **Prerequisite:** Ensure your Flutter Runner project (both iOS and Android targets) is already configured with Firebase. This means:
>
> * A valid **google-services.json** is placed in the Android project.
> * A valid **GoogleService-Info.plist** is added to the iOS project.
>
> Refer to the official Firebase setup guides for details:
>
> * **iOS:** [https://firebase.google.com/docs/ios/setup](https://firebase.google.com/docs/ios/setup)
> * **Android:** [https://firebase.google.com/docs/android/setup](https://firebase.google.com/docs/android/setup)

---

## Android Setup

1. **Add the TagCommander Firebase Destination dependency**

   In your **module‑level** `build.gradle` (or `build.gradle.kts`) file, append the following lines to the existing Firebase block **without altering any other dependencies**:

   ```gradle
   dependencies {
      implementation "org.jetbrains.kotlin:kotlin-stdlib-jdk7:$kotlin_version"
      implementation 'com.tagcommander.lib:FirebaseDestination:5.1.2'
      implementation platform('com.google.firebase:firebase-bom:33.15.0')
      implementation 'com.google.firebase:firebase-analytics'
   }
   ```

2. \*\*Initialize the destination in \*\*\`\`

   Add the initialization call inside your activity’s `onCreate`:

   ```kotlin
   class MainActivity: FlutterActivity() {
       override fun onCreate(savedInstanceState: Bundle?) {
           super.onCreate(savedInstanceState)
           TCFirebase.getInstance().initialize(applicationContext)
       }
   }
   ```

3. **Verify events**

   Run the app with debugging enabled and open **DebugView** in the Firebase console to confirm that events are arriving:
   [https://firebase.google.com/docs/analytics/debugview#android](https://firebase.google.com/docs/analytics/debugview#android)

---

## iOS Setup

1. \*\*Implement the delegate in \*\*\`\`

   Conform to `TCFirebaseAnalyticsDelegate` (and any other required TagCommander delegates) and return the Firebase Analytics instance:

   ```swift
   @objc class AppDelegate: FlutterAppDelegate, TCFirebaseConsentDelegate, TCFirebaseAnalyticsDelegate {

       func getFirebaseAnalyticsInstace() -> Any! {
           return Analytics.self
        }
   }
   ```

2. **Verify events**

   Launch the app on a device or simulator with analytics debug mode enabled and use Firebase **DebugView** to validate incoming events:
   [https://firebase.google.com/docs/analytics/debugview#ios](https://firebase.google.com/docs/analytics/debugview#ios)

---

## Next Steps

* Commit these changes and push to your repository.
* Deploy a test build to ensure consent flows and event collection work as expected.
* For additional TagCommander configuration, consult the official TagCommander documentation.

---

**That’s it!** Your Flutter Runner now forwards analytics events to Firebase via TagCommander on both Android and iOS.