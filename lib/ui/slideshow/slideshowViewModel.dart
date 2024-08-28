import 'package:flutter/material.dart';

class SlideshowViewModel extends ChangeNotifier {
  // Private variable to hold the state
  String _text = "This is slideshow Fragment";

  // Getter to expose the state
  String get text => _text;

  // Method to update the state and notify listeners
  void updateText(String newText) {
    _text = newText;
    notifyListeners(); // Notify listeners of the change
  }
}
