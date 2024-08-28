import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart' as custom_firebase_options;
import 'splashScreen.dart'; // Ensure this file exists and is in the same directory or adjust the path

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: custom_firebase_options.FireOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FiapApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          SplashScreen(), // Ensure SplashScreen is properly defined in splash_screen.dart
    );
  }
}
