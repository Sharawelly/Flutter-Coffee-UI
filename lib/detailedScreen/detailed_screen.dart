import 'package:coffee_app/detailedScreen/buy_coffee.dart';
import 'package:coffee_app/detailedScreen/coffee_main_details.dart';
import 'package:coffee_app/detailedScreen/description.dart';
import 'package:coffee_app/model/coffee_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'coffee_size.dart';
import '../data/coffe_items_data.dart';

class DetailedScreen extends StatelessWidget{
  const DetailedScreen({required this.coffeeItem, super.key, required this.switchToStartScreen});
  final CoffeeItem coffeeItem;
  final void Function() switchToStartScreen;
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          CoffeeMainDetails(
            image: coffeeItem.image,
            name: coffeeItem.name,
            numOfRatingPeople: coffeeItem.numOfRatingPeople,
            rating: coffeeItem.rating,
            temperature: coffeeItem.temperature,
          ),
          Description(
            description: coffeeItem.description,
          ),
          CoffeeSize(),
          SizedBox(
            height: 15,
          ),
          BuyCoffee(price: coffeeItem.price),
        ],
      ),
    );
}

}