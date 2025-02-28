import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuyCoffee extends StatelessWidget {
  const BuyCoffee({super.key, required this.price});

  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          color: Colors.white
          // color: Colors.red
          ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0x52000000),
                  ),
                ),
                Text(
                  '\$ ${price.toString()}',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      // rgba(199,128,83,255)
                      color: Color.fromARGB(255, 199, 128, 83)),
                ),
              ],
            ),
            Positioned(
              right: 8,
              child: Container(
                height: 60,
                width: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 198, 124, 78)
                ),
                child: TextButton(
                  onPressed: null,
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                      fontSize: 15.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
