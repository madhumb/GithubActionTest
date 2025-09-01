import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sep_roject/app.dart';

Future<void> runMainApp({required FirebaseOptions firebaseOptions}) async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase
  await Firebase.initializeApp(options: firebaseOptions);
  runApp(const MyApp());
}
