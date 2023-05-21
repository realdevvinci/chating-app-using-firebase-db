// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAe_YZDoM0M7GvZc4n5MTDYzRLI5imPrrU',
    appId: '1:708883682554:web:5e368e07d66900efb02543',
    messagingSenderId: '708883682554',
    projectId: 'flash-chat-ef75c',
    authDomain: 'flash-chat-ef75c.firebaseapp.com',
    storageBucket: 'flash-chat-ef75c.appspot.com',
    measurementId: 'G-WKFSCKM5G5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA2XzswesDr-CvPRKoksrjXM8lH2LQPyqs',
    appId: '1:708883682554:android:4e5d02877847c51eb02543',
    messagingSenderId: '708883682554',
    projectId: 'flash-chat-ef75c',
    storageBucket: 'flash-chat-ef75c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBaAy4mENBE45yaHuJGFVDcWrhoS9hOEZM',
    appId: '1:708883682554:ios:708c9f8f31a8b0b7b02543',
    messagingSenderId: '708883682554',
    projectId: 'flash-chat-ef75c',
    storageBucket: 'flash-chat-ef75c.appspot.com',
    iosClientId: '708883682554-8eb6hvju17gs1lk05kqi3198e2n0vqlu.apps.googleusercontent.com',
    iosBundleId: 'com.example.flashChat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBaAy4mENBE45yaHuJGFVDcWrhoS9hOEZM',
    appId: '1:708883682554:ios:708c9f8f31a8b0b7b02543',
    messagingSenderId: '708883682554',
    projectId: 'flash-chat-ef75c',
    storageBucket: 'flash-chat-ef75c.appspot.com',
    iosClientId: '708883682554-8eb6hvju17gs1lk05kqi3198e2n0vqlu.apps.googleusercontent.com',
    iosBundleId: 'com.example.flashChat',
  );
}
