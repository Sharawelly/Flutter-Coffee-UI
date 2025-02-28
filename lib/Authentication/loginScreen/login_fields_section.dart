import 'package:coffee_app/Authentication/loginScreen/remember_me.dart';
import 'package:coffee_app/Authentication/login_and_signup_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginFieldsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const List<Map<String, IconData?>> loginFields = [
      {'Email': null},
      {'Password': Icons.lock},
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
          Row(
            children: [
              RememberMe(),
              Text('Remember me'),
              Spacer(),
              Text(
                'Forget Password?',
                style: TextStyle(
                    // rgba(49,195,253,255)
                    color: Color.fromARGB(255, 49, 195, 253)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
