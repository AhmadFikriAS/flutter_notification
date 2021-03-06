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
    apiKey: 'AIzaSyBY9bl6JbMyiNVJ8WOgCXrdZwEdmdwbBrw',
    appId: '1:461832830740:web:8223bf3236f71d1bc88c01',
    messagingSenderId: '461832830740',
    projectId: 'fcmflutter-232f0',
    authDomain: 'fcmflutter-232f0.firebaseapp.com',
    storageBucket: 'fcmflutter-232f0.appspot.com',
    measurementId: 'G-94ZJJ2HMP7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQcwc5ocT4ETaXKlxsBEops1EwbauYq1g',
    appId: '1:461832830740:android:8b17b7f2a210dc74c88c01',
    messagingSenderId: '461832830740',
    projectId: 'fcmflutter-232f0',
    storageBucket: 'fcmflutter-232f0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDa5jgHM9OY2ifnQnVyiDuu7Z24hk72veE',
    appId: '1:461832830740:ios:e6afac3c29db8ee6c88c01',
    messagingSenderId: '461832830740',
    projectId: 'fcmflutter-232f0',
    storageBucket: 'fcmflutter-232f0.appspot.com',
    iosClientId: '461832830740-0r8ggjeesd3v7q1b2hks9p7iapl299nl.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFcm',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDa5jgHM9OY2ifnQnVyiDuu7Z24hk72veE',
    appId: '1:461832830740:ios:e6afac3c29db8ee6c88c01',
    messagingSenderId: '461832830740',
    projectId: 'fcmflutter-232f0',
    storageBucket: 'fcmflutter-232f0.appspot.com',
    iosClientId: '461832830740-0r8ggjeesd3v7q1b2hks9p7iapl299nl.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFcm',
  );
}
