import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'coffee_service_options.dart';

class CoffeeMainDetails extends StatelessWidget{
  const CoffeeMainDetails({required this.name, super.key, required this.temperature, required this.rating, required this.numOfRatingPeople, required this.image});
  final String name;
  final String image;
  final String temperature;
  final double rating;
  final int numOfRatingPeople;


  @override
  Widget build(BuildContext context) {
    const List<String> icons = [
      'assets/images/driver.png',
      'assets/images/coffee-beans.png',
      'assets/images/milk.png',
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 230,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill
              )

            ),
          ),
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        temperature,
                        style: TextStyle(
                            color: Color(0x52000000)
                        ),
                      ),
                      Spacer(),
                      ...icons.map((icon){
                        return CoffeeServiceOptions(image: icon,);
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xfffbbe21),
                      ),
                      Text(
                        ' ${rating.toString()}',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          ' (${numOfRatingPeople.toString()})',
                          style: TextStyle(
                              color: Color(0x52000000)
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Divider To make out line
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18
                    ),
                    child: Divider(
                      color: Color.fromARGB(255, 236, 236, 236)
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

}