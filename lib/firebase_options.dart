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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyAvTKAsQSpJmpC2inedUo619sKmvZeEx4w',
    appId: '1:621210772639:web:62554e15b789cdbcf2eeaa',
    messagingSenderId: '621210772639',
    projectId: 'controller-ea565',
    authDomain: 'controller-ea565.firebaseapp.com',
    databaseURL: 'https://controller-ea565-default-rtdb.firebaseio.com',
    storageBucket: 'controller-ea565.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDr3SLtCyGX756BHxTpp3dc1K_cJUTKi3E',
    appId: '1:621210772639:android:b03397f85e0a5513f2eeaa',
    messagingSenderId: '621210772639',
    projectId: 'controller-ea565',
    databaseURL: 'https://controller-ea565-default-rtdb.firebaseio.com',
    storageBucket: 'controller-ea565.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCfUeLEADnhUHNVtLQ7yAPfWg_pvCjYWDA',
    appId: '1:621210772639:ios:9b192c35c1e35cdff2eeaa',
    messagingSenderId: '621210772639',
    projectId: 'controller-ea565',
    databaseURL: 'https://controller-ea565-default-rtdb.firebaseio.com',
    storageBucket: 'controller-ea565.appspot.com',
    iosBundleId: 'com.example.controllerFinancas',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCfUeLEADnhUHNVtLQ7yAPfWg_pvCjYWDA',
    appId: '1:621210772639:ios:9b192c35c1e35cdff2eeaa',
    messagingSenderId: '621210772639',
    projectId: 'controller-ea565',
    databaseURL: 'https://controller-ea565-default-rtdb.firebaseio.com',
    storageBucket: 'controller-ea565.appspot.com',
    iosBundleId: 'com.example.controllerFinancas',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAvTKAsQSpJmpC2inedUo619sKmvZeEx4w',
    appId: '1:621210772639:web:e77da60a913ca636f2eeaa',
    messagingSenderId: '621210772639',
    projectId: 'controller-ea565',
    authDomain: 'controller-ea565.firebaseapp.com',
    databaseURL: 'https://controller-ea565-default-rtdb.firebaseio.com',
    storageBucket: 'controller-ea565.appspot.com',
  );
}
