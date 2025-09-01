import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_github_actions/main.dart';

void main() async {
  await runMainApp(firebaseOptions: DefaultFirebaseOptions.currentPlatform);
}

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return const FirebaseOptions(
          apiKey: 'AIzaSyAcsulr6biW5zr7NjPcvXB2_KiPz6hSHtk',
          appId: '1:157757305450:android:9139895a75fb3179359013',
          messagingSenderId: '157757305450',
          projectId: 'star-c5c80',
          storageBucket: 'star-c5c80.firebasestorage.app',
        );
      case TargetPlatform.iOS:
      case TargetPlatform.fuchsia:
        throw UnsupportedError('Fuchsia not supported ');
      default:
        throw UnsupportedError('Unknown platform');
    }
  }
}
