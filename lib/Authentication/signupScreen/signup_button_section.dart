import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupButtonSection extends StatelessWidget {
  const SignupButtonSection({super.key, required this.switchToLoginScreen});
  final void Function() switchToLoginScreen;
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
                  onPressed: switchToLoginScreen,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    // Button background color
                    minimumSize: Size(double.infinity, 55),
                    // Button padding (height & width)
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    maxLines: 1,
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?  '),
                    GestureDetector(
                      onTap: switchToLoginScreen,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Color.fromARGB(255, 49, 195, 253),
                        ),
                      ),
                    )
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
