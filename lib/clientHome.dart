import 'package:flutter/material.dart';

class ClientHomePage extends StatefulWidget {
  @override
  _ClientHomePageState createState() => _ClientHomePageState();
}

class _ClientHomePageState extends State<ClientHomePage> {
  String buttonText = "Click Me";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FiapApp'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              buttonText = "Texto alterado!";
            });
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Texto alterado!')),
            );
          },
          child: Text(buttonText),
        ),
      ),
    );
  }
}
