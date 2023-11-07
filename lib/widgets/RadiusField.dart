import 'package:flutter/material.dart';

class RadiusField extends StatelessWidget {
  final String hintText;
  final double horizontal;
  final double vertical;

  const RadiusField({
    required this.hintText,
    required this.horizontal,
    required this.vertical,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
            child: TextField(
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
