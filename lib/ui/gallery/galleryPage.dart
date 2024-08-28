import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'galleryViewModel.dart'; // Ensure this path is correct

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Access the ViewModel using Provider
    final galleryViewModel = Provider.of<GalleryViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery Page'),
      ),
      body: Center(
        child: Text(
          galleryViewModel.text,
          style: TextStyle(fontSize: 24),
        ),
      ),
      // Optionally, add a FloatingActionButton to update text
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          galleryViewModel.updateText("Updated text value");
        },
        child: Icon(Icons.update),
      ),
    );
  }
}
