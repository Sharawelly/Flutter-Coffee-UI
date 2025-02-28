
import 'package:flutter/material.dart';

import 'login_button_section.dart';
import 'login_fields_section.dart';
import 'login_header.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      // make a Container take up the full height of the screen using "MediaQuery"
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft: Radius.circular(25),
          )
        ),
        width: double.infinity, // Makes it full width
        height: MediaQuery.of(context).size.height, // Makes it full height
        child: Column(
          children: [
            LoginHeader(),
            LoginFieldsSection(),
            LoginButtonSection(),
          ],
        ),
      ),
    );

  }

}