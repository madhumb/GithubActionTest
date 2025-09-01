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
          apiKey: 'AIzaSyB6vipk3fqlkMIuFLmduqiifVQvF6ICX4Y',
          appId: '1:816245006361:android:d96bf6330b712425a3ca88',
          messagingSenderId: '816245006361',
          projectId: 'favorite-31035',
          storageBucket: 'favorite-31035.firebasestorage.app',
        );
      case TargetPlatform.iOS:
      case TargetPlatform.fuchsia:
        throw UnsupportedError('Fuchsia not supported');
      default:
        throw UnsupportedError('Unknown platform');
    }
  }
}
