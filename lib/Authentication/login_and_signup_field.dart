import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginAndSignupField extends StatelessWidget {
  const LoginAndSignupField({super.key, required this.text, this.icon});

  final String text;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    Object h = Icons.lock;
    return TextField(
      decoration: InputDecoration(
        // Label inside the input field
        labelText: text, // "text" Appears inside the input field and moves up when text is entered.

        // Adds a border around the field with rounded corners
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15), // Creates rounded edges (12px)
        ),

        // Suffix Icon
        suffixIcon: IconButton(
          icon: Icon(
            icon
          ),
          onPressed: () {
          },
        ),
      ),
    );
  }
  
}