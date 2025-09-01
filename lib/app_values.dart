import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppValues {
  static String get title {
    switch (appFlavor) {
      case 'star':
        return "Star App";
      case 'checkcircle':
        return "CheckCircle App";
      case 'favorite':
        return "Favorite App";
      default:
        return "Dev App";
    }
  }

  static Color get bgColor {
    switch (appFlavor) {
      case 'star':
        return const Color(0xFF434343);
      case 'checkcircle':
        return  Colors.white54;
      case 'favorite':
        return const Color(0xFF5985E1);
      default:
        return Colors.grey;
    }
  }

  static Color get onBgColor {
    switch (appFlavor) {
      case 'star':
        return const Color(0xFFFFFFFF);
      case 'checkcircle':
        return Colors.black;
      case 'favorite':
        return const Color(0xFFFFFFFF);
      default:
        return Colors.grey;
    }
  }

  static String get baseUrl {
    switch (appFlavor) {
      case 'star':
        return "https://api.star.com";
      case 'checkcircle':
        return "https://api.checkcircle.com";
      case 'prod':
        return "https://api.favorite.com";
      default:
        return "https://api.dev.com";
    }
  }
}
