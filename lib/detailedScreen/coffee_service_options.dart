import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeeServiceOptions extends StatelessWidget {
  const CoffeeServiceOptions({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Color(0x8000000),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: SizedBox(
            height: 25,
            width: 25,
            child: Image.asset(
              image,
              color: Color.fromARGB(255, 198, 124, 78),
            ),
          ),
        ),
      ),
    );
  }
}
