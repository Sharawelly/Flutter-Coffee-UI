import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../login_and_signup_field.dart';

class SignupFieldsSection extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    const List<Map<String, IconData?>> loginFields = [
      {'Full Name': Icons.person},
      {'Year': Icons.access_time},
      {'Email': Icons.email},
      {'Password': Icons.lock},
      {'Confirm Password': Icons.lock},
    ];
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ...loginFields.map(
                (element) {
              return Column(
                children: [
                  LoginAndSignupField(
                    text: element.keys.first, // access the key
                    icon: element.values.first, // access the value
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}