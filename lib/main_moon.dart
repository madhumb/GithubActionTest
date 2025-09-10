import 'package:flutter/foundation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sep_roject/main_com.dart';

void main() async {
  await runMainApp(firebaseOptions: DefaultFirebaseOptions.currentPlatform);
}

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return const FirebaseOptions(
          apiKey: 'AIzaSyBmzGji5Gq6R5ydyLYVifYH3j8CYMY1eTM',
          appId: '1:922586843536:ios:adc5925c6b755b74134b15',
          messagingSenderId: '922586843536',
          projectId: 'bookmark-my-benefits',
          storageBucket: 'bookmark-my-benefits.firebasestorage.app',
        );
      case TargetPlatform.iOS:
      case TargetPlatform.fuchsia:
        throw UnsupportedError('Fuchsia not supported ');
      default:
        throw UnsupportedError('Unknown platform');
    }
  }
}
