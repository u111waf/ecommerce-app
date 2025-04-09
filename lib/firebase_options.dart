// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDbEh2U2sU1aMR_lnDrtsI3Av3sKjJtoFo',
    appId: '1:77792076147:web:dc8875124c6e174a4d2506',
    messagingSenderId: '77792076147',
    projectId: 'ecommerceapp-17bdd',
    authDomain: 'ecommerceapp-17bdd.firebaseapp.com',
    storageBucket: 'ecommerceapp-17bdd.firebasestorage.app',
    measurementId: 'G-XL9QFWHPP5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCxdpyhKZUBzovrTAv5WZ03UrlEOFY2BI4',
    appId: '1:77792076147:android:f9b866d7d8656f874d2506',
    messagingSenderId: '77792076147',
    projectId: 'ecommerceapp-17bdd',
    storageBucket: 'ecommerceapp-17bdd.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCagTjqD_Rt_qxeVpzxweyP0V6ORyBKCZU',
    appId: '1:77792076147:ios:3de6ebd3886739494d2506',
    messagingSenderId: '77792076147',
    projectId: 'ecommerceapp-17bdd',
    storageBucket: 'ecommerceapp-17bdd.firebasestorage.app',
    iosBundleId: 'com.example.ecommerce',
  );
}
