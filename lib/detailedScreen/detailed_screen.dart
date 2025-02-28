import 'package:coffee_app/detailedScreen/buy_coffee.dart';
import 'package:coffee_app/detailedScreen/coffee_main_details.dart';
import 'package:coffee_app/detailedScreen/description.dart';
import 'package:coffee_app/model/coffee_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'coffee_size.dart';
import '../data/coffe_items_data.dart';

class DetailedScreen extends StatelessWidget{
  const DetailedScreen({required this.coffeeItem, super.key});
  final CoffeeItem coffeeItem;
  @override
  Widget build(BuildContext context) {
    CoffeeItem test = coffeeItemsData[1];
    return  SingleChildScrollView(
      child: Column(
        children: [
          CoffeeMainDetails(
            image: test.image,
            name: test.name,
            numOfRatingPeople: test.numOfRatingPeople,
            rating: test.rating,
            temperature: test.temperature,
          ),
          Description(
            description: test.description,
          ),
          CoffeeSize(),
          SizedBox(
            height: 15,
          ),
          BuyCoffee(price: test.price),
        ],
      ),
    );
}

}