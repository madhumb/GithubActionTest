import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:sep_roject/main_com.dart';

void main() async {
  await runMainApp(firebaseOptions: DefaultFirebaseOptions.currentPlatform);
}

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return const FirebaseOptions(
          apiKey: 'AIzaSyDVMTgU0mO5vxF36W_ojgZZ0LEeDYQQ2yM',
          appId: '1:774528451313:android:d9ee81d0c34f454b3b9f50',
          messagingSenderId: '774528451313',
          projectId: 'checkcircle-78d66',
          storageBucket: 'checkcircle-78d66.firebasestorage.app',
        );
      case TargetPlatform.iOS:
      case TargetPlatform.fuchsia:
        throw UnsupportedError('Fuchsia not supported');
      default:
        throw UnsupportedError('Unknown platform');
    }
  }
}
