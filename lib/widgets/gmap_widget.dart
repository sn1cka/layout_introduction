import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyGoogleMap extends StatefulWidget {
  MyGoogleMap(this.lat, this.lon, {@required this.onCoordsChanged});

  final Function(double, double) onCoordsChanged;

  final double lat;
  final double lon;

  @override
  _MyGoogleMapState createState() => _MyGoogleMapState(lat, lon, onCoordsChanged);
}

class _MyGoogleMapState extends State<MyGoogleMap> {
  _MyGoogleMapState(this.lat, this.lon, this.onCoordsChanged);

  GoogleMapController mapController;
  final Function(double, double) onCoordsChanged;

  double lat;
  double lon;
  GoogleMap gmap;
  Widget child = CircularProgressIndicator();

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    child = gmap;
    mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(zoom: 16, target: LatLng(lat, lon))));
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
        markers: {Marker(markerId: MarkerId('1'), position: LatLng(lat, lon))},
        onTap: (argument) async {
          lat = argument.latitude;
          lon = argument.longitude;
          mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: argument, zoom: 16)));
          onCoordsChanged(lat, lon);
          setState(() {});
        },
        myLocationEnabled: true,
        trafficEnabled: false,
        mapToolbarEnabled: false,
        myLocationButtonEnabled: true,
        zoomGesturesEnabled: true,
        rotateGesturesEnabled: true,
        scrollGesturesEnabled: true,
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(target: LatLng(lat, lon), zoom: 16));
  }
}
