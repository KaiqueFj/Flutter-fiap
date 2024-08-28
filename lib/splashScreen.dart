import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'Welcome to the App',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
