import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 20),
    //   child: Stack(
    //     children: [
    //       Container(
    //         height: 135,
    //         width: double.infinity,
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(20),
    //           color: Colors.brown,
    //         ),
    //       ),
    //       Positioned(
    //         top: 10,
    //         left: 20,
    //         child: Container(
    //           height: 30,
    //           width: 55,
    //           decoration: BoxDecoration(
    //             color: Colors.red,
    //             borderRadius: BorderRadius.circular(8),
    //           ),
    //           child: Center(
    //             child: Text(
    //               'Promo',
    //               style: TextStyle(
    //                 color: Colors.white,
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //       Positioned(
    //         top: 50,
    //         left: 20,
    //         child: Text(
    //           'Buy One get\nOne FREE',
    //           style: TextStyle(
    //             fontSize: 25,
    //             color: Colors.white,
    //             fontWeight: FontWeight.bold,
    //             backgroundColor: Colors.black,
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Container(
        height: 135,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.brown,
        ),
        child: Image.asset(
          'assets/images/offer.png',
          fit: BoxFit.fill, // Ensures the whole image will fit the container
        ),
      ),
    );
  }
}
