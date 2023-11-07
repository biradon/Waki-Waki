import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart';
import 'package:tuple/tuple.dart';


class MapPage extends StatelessWidget {
  late final String address;

  MapPage({required this.address});

  @override
  Widget build(BuildContext context) {
    Tuple2<double, double> locations = Tuple2(43.6761395, -79.4133958);
    return Scaffold(
      body: Center(
        child: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(locations.item1, locations.item2),
            zoom: 15.0,
          ),
          onMapCreated: (GoogleMapController controller) {
            // Add your logic after the map is created
          },
        ),
      ),
    );
  }
}
