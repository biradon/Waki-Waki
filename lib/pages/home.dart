import 'package:flutter/material.dart';
import '../widgets/AppTitle.dart';
import '../widgets/InputField.dart';
import '../widgets/RadiusField.dart';
import 'map.dart';



class HomePage extends StatelessWidget {
  TextEditingController userInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTitle(),
            InputField(
              hintText: 'Your Destination',
              horizontal: 20.0,
              vertical: 15.0,
              userInputController: userInputController, // Pass the controller
            ),
            const RadiusField(
              horizontal: 20.0,
              vertical: 15.0,
              hintText: 'Select distance for the alarm',
            ),
            ElevatedButton(
              onPressed: () {
                String address = "160 Kendal Ave, Toronto, ON M5R 1M3";
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapPage(address: address)),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlueAccent,
                textStyle: TextStyle(fontSize: 20),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}




