import 'package:flutter/material.dart';

// Define your ViewModel
class HomeViewModel extends ChangeNotifier {
  // Private variable to hold the state
  String _text = "This is home Fragment";

  // Getter to expose the state as a Stream
  String get text => _text;

  // Method to update the state and notify listeners
  void updateText(String newText) {
    _text = newText;
    notifyListeners(); // Notify listeners of the change
  }
}
