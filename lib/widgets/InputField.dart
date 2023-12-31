import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final double horizontal;
  final double vertical;
  final TextEditingController userInputController; // Add this line

  const InputField({
    required this.hintText,
    required this.horizontal,
    required this.vertical,
    required this.userInputController, // Add this line
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
            child: TextField(
            controller: userInputController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black87,
                    width: 10.0,
                  ),
                ),
                hintText: hintText,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
