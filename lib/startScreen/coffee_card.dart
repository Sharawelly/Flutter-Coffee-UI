
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/coffee_item.dart';

class CoffeeCard extends StatelessWidget {
  const CoffeeCard(
      {required this.switchScreen, required this.coffeeItemsData, super.key});

  final List<CoffeeItem> coffeeItemsData;
  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 400,
      child: GridView.builder(
        itemCount: coffeeItemsData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 260, // size of the grid
          crossAxisCount: 2,
          crossAxisSpacing: 20, // Space between columns
          mainAxisSpacing: 20, // Space between rows
        ),
        itemBuilder: (BuildContext context, int index) {
          final CoffeeItem currentCoffee = coffeeItemsData[index];
          return GestureDetector(
            onTap: switchScreen,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                      8) // Background color to make it visible
                  ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 140,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: AssetImage(currentCoffee.image),
                                  fit: BoxFit.fill)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          currentCoffee.name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          currentCoffee.type,
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0x62000000),
                          ),
                        ),
                        Spacer(),
                        Text(
                          '\$ ${currentCoffee.price.toString()}',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      right: 0,
                      top: -5,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0x4F000000),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(22.5),
                              bottomLeft: Radius.circular(
                                  23), // Optional: for a smoother design
                            )),
                        height: 40,
                        width: 55,
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xfffbbe21),
                              size: 20,
                            ),
                            Text(
                              ' ${currentCoffee.rating.toString()}',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 37,
                        width: 37,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 198, 124, 78), // Background color
                          borderRadius:
                              BorderRadius.circular(12), // Rounded square
                        ),
                        alignment: Alignment.center,
                        // Centers child inside the container
                        child: IconButton(
                          onPressed: () {}, // Button action
                          icon: Icon(
                            Icons.add,
                            color: Colors.white, // Icon color
                          ),
                          padding: EdgeInsets.zero, // Removes default padding
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
