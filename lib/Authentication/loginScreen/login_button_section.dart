import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned(
            bottom: 80,
            right: 30,
            left: 30,
            child: Column(
              children: [
                TextButton(
                  onPressed: null,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue, // Button background color
                    minimumSize: Size(double.infinity, 55), // Adjust the button width and height
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text('Log In',
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?   '),
                    Text('Sign Up',
                    style: TextStyle(
                        color: Color.fromARGB(255, 49, 195, 253),
                    ),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
