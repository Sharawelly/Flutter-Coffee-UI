import 'package:coffee_app/Authentication/signupScreen/signup_button_section.dart';
import 'package:coffee_app/Authentication/signupScreen/signup_fields_section.dart';
import 'package:coffee_app/Authentication/signupScreen/signup_header.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget{
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
            SignupHeader(),
            SignupFieldsSection(),
            SignupButtonSection(),
          ],
        ),
      ),
    );

  }
}