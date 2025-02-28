import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RememberMe extends StatefulWidget {
  @override
  State<RememberMe> createState() {
    return _RememberMeState();
  }
}

class _RememberMeState extends State<RememberMe> {
  bool checked = false;

  void makeItChecked(bool ? value){
    setState(() {
      checked ^= true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checked, // Sets the checkbox state (checked or unchecked)
      onChanged: makeItChecked,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4), // Rounds the edges slightly
      ),
      checkColor: Colors.white, // The color of the checkmark (✓ symbol)
      activeColor: Colors.blue, // The background color when the checkbox is checked

      // Border styling for when the checkbox is unchecked
      side: BorderSide(
        color: Colors.black, // Border color
        width: 2, // Thickness of the border
      ),
    );
  }
}
