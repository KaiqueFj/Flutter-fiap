import 'package:flutter/material.dart';

class GalleryViewModel extends ChangeNotifier {
  // Private variable to hold the state
  String _text = "This is gallery Fragment";

  // Getter to expose the state
  String get text => _text;

  // Optionally, you can add methods to update the state
  void updateText(String newText) {
    _text = newText;
    notifyListeners(); // Notify listeners of the change
  }
}
