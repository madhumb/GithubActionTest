import 'dart:io';

import 'main_star.dart' as star;
import 'main_bookmark.dart' as bookmark; // add more if you have more flavors

void main(List<String> args) {
  // Check FLAVOR environment variable (set in Xcode scheme or flutter build)
  const flavor = String.fromEnvironment('FLUTTER_FLAVOR');

  switch (flavor) {
    case 'star':
      star.main();
      break;
    case 'bookmark':
      bookmark.main();
      break;
    default:
      // Fallback to one flavor if nothing is set
      star.main();
  }
}
