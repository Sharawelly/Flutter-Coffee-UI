import 'package:flutter/cupertino.dart';

class SignupHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Text('Sign Up',
            style:TextStyle(
              fontSize: 24,
              color: Color(0xFF2CC5D3),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text('Create an account to continue',
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