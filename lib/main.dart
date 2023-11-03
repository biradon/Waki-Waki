import 'package:flutter/material.dart';
import 'widgets/AppTitle.dart';
import 'widgets/InputField.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTitle(),
              const InputField(
                horizontal: 20.0,
                vertical: 15.0,
                hintText: 'Your Destination',
              ),
              const InputField(
                horizontal: 20.0,
                vertical: 15.0,
                hintText: 'Select distance for the alarm',
              ),
              ElevatedButton(
                onPressed: () {
                  // Logic go here later
                  // When pressed, send the API to Google API which gets location and draws the radius around
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlueAccent, // Background color of the button
                  textStyle: TextStyle(fontSize: 20), // Text style
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Border radius
                  ),
                ),
                child: Text('OK'),
              ),
              Expanded(
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(37.7749, -122.4194), // Initial map location
                    zoom: 15.0, // Initial zoom level
                  ),
                  onMapCreated: (GoogleMapController controller) {
                    // Add your logic after the map is created
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
