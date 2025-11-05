import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFFDE4435);
    final theme = ThemeData(
      primaryColor: primaryColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          secondary: Colors.orange,
          primary: primaryColor,
        ),
      ),
      home: AdaptiveHome(),
    );
  }
}

class AdaptiveHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WiderHomePage();
  }
}

class WiderHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Wider Home Page'),
        ),
        body: Center(
          child: Text('This is the wider home page layout.'),
        ),
      ),
    );
  }
}
