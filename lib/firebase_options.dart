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
    apiKey: 'AIzaSyDAhoRDNFkTTJ24fA0bTDvs7840gs1kv-0',
    appId: '1:161477242847:web:de7e4bb6c19dc0c0efde6a',
    messagingSenderId: '161477242847',
    projectId: 'netflix-clone-891eb',
    authDomain: 'netflix-clone-891eb.firebaseapp.com',
    storageBucket: 'netflix-clone-891eb.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA9iwq38o3VxZUmAHKIMpNmOdjHlfj7Bmo',
    appId: '1:161477242847:android:3de9b3b2b62d8fddefde6a',
    messagingSenderId: '161477242847',
    projectId: 'netflix-clone-891eb',
    storageBucket: 'netflix-clone-891eb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAEpu3OSMJbwJ9_BQLh6t0KvneI_Bl-U-4',
    appId: '1:161477242847:ios:2ce459a4dc2b844befde6a',
    messagingSenderId: '161477242847',
    projectId: 'netflix-clone-891eb',
    storageBucket: 'netflix-clone-891eb.appspot.com',
    iosClientId: '161477242847-bnplib0q0qlplqv24kqaq7eqp8dt0577.apps.googleusercontent.com',
    iosBundleId: '-',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAEpu3OSMJbwJ9_BQLh6t0KvneI_Bl-U-4',
    appId: '1:161477242847:ios:acb27c094e5f611defde6a',
    messagingSenderId: '161477242847',
    projectId: 'netflix-clone-891eb',
    storageBucket: 'netflix-clone-891eb.appspot.com',
    iosClientId: '161477242847-ctn31f0mlsn89654jpsnnd7o92o00oq2.apps.googleusercontent.com',
    iosBundleId: 'com.example.netflixClonecoding',
  );
}
