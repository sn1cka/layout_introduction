import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyGoogleMap extends StatefulWidget {
  MyGoogleMap(this.lat, this.lon, {this.onCoordsChanged});

  final Function(double) onCoordsChanged;


  final double lat;
  final double lon;

  @override
  _MyGoogleMapState createState() =>
      _MyGoogleMapState(lat, lon, onCoordsChanged);
}

class _MyGoogleMapState extends State<MyGoogleMap> {
  GoogleMapController mapController;
  final Function(double) onCoordsChanged;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    child = gmap;
    mapController.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(zoom: 20, target: LatLng(lat, lon))));
  }

  _MyGoogleMapState(this.lat, this.lon, this.onCoordsChanged) {
    gmap = GoogleMap(
        onTap: (argument)
    {
      lat = argument.latitude;
      lon = argument.longitude;
      gmap.markers.clear();
      setState(() {
        gmap.markers.add(Marker(markerId: MarkerId('1'),position: argument));
      });
    },
    onCameraMove: (position) {
    onCoordsChanged(10.0);
    },
    myLocationEnabled: true,
    trafficEnabled: false,
    mapToolbarEnabled: true,
    myLocationButtonEnabled: true,
    zoomGesturesEnabled: true,
    rotateGesturesEnabled: true,
    scrollGesturesEnabled: true,
    onMapCreated: _onMapCreated,
    initialCameraPosition: CameraPosition(target: LatLng(lat, lon), zoom: 16));
  }

  double lat;
  double lon;
  GoogleMap gmap;
  Widget child = CircularProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return Expanded(child: gmap);
  }

}

