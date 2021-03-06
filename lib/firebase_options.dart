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
    apiKey: 'AIzaSyBTIrvhxcnE1rFwmcv95HSJ0a7K9HmfWK4',
    appId: '1:273423698471:web:c4c71e68ead06fdf7b5c02',
    messagingSenderId: '273423698471',
    projectId: 'kapdax-app',
    authDomain: 'kapdax-app.firebaseapp.com',
    storageBucket: 'kapdax-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDZCsplL25PZN2TBUU6CegadP5USUuMR1I',
    appId: '1:273423698471:android:0b9e765517d047527b5c02',
    messagingSenderId: '273423698471',
    projectId: 'kapdax-app',
    storageBucket: 'kapdax-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDurVV6sPt2z3IGfK9UwLgAVj_lqqtj6E8',
    appId: '1:273423698471:ios:36a887cb5df6fde77b5c02',
    messagingSenderId: '273423698471',
    projectId: 'kapdax-app',
    storageBucket: 'kapdax-app.appspot.com',
    iosClientId: '273423698471-4ncnode31v42p1rd0cfps86v6cl6cfci.apps.googleusercontent.com',
    iosBundleId: 'com.example.kapda',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDurVV6sPt2z3IGfK9UwLgAVj_lqqtj6E8',
    appId: '1:273423698471:ios:36a887cb5df6fde77b5c02',
    messagingSenderId: '273423698471',
    projectId: 'kapdax-app',
    storageBucket: 'kapdax-app.appspot.com',
    iosClientId: '273423698471-4ncnode31v42p1rd0cfps86v6cl6cfci.apps.googleusercontent.com',
    iosBundleId: 'com.example.kapda',
  );
}
