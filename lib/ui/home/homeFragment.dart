import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class HomeViewModel extends ChangeNotifier {}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Set<Marker> _markers = {};
  late GoogleMapController _mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          _mapController = controller;
          _addMarker();
        },
        initialCameraPosition: CameraPosition(
          target: LatLng(-34.0, 151.0),
          zoom: 10.0,
        ),
        markers: _markers,
      ),
    );
  }

  void _addMarker() {
    final marker = Marker(
      markerId: MarkerId('sydney_marker'),
      position: LatLng(-34.0, 151.0),
      infoWindow: InfoWindow(title: 'Marker in Sydney'),
    );

    setState(() {
      _markers.add(marker); // Add marker to the set
    });

    _mapController
        .animateCamera(CameraUpdate.newLatLngZoom(LatLng(-34.0, 151.0), 10.0));
  }
}
