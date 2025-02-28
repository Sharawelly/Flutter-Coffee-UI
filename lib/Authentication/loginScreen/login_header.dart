import 'package:flutter/cupertino.dart';

class LoginHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Text('Login',
          style:TextStyle(
            fontSize: 24,
            color: Color(0xFF2CC5D3),
          ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text('Enter your email and password to log in',
          style:TextStyle(
            fontSize: 15,
            // rgba(166,166,166,255)
            color: Color.fromARGB(255, 166, 166, 166),
          ),
        ),
      ],
    );
  }

}