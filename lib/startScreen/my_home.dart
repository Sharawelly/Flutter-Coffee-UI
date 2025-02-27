import 'package:coffee_app/model/coffee_item.dart';
import 'package:coffee_app/startScreen/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'categories.dart';
import 'coffee_card.dart';
import 'header.dart';
import 'offer.dart';

class MyHome extends StatelessWidget {
  const MyHome({required this.coffeeItems, required this.switchScreen, super.key});
  final List<CoffeeItem> coffeeItems;
  final void Function() switchScreen;
  @override
  Widget build(BuildContext context) {
    const List<String> categories = ['All Coffee', 'Machiato', 'Latte', 'Juice', 'American Coffee'];
    return Column(
      children: [
        Header(),
        Search(),
        Offers(),
        Categories(categories: categories,),
        CoffeeCard(switchScreen: switchScreen, coffeeItemsData: coffeeItems),
      ],
    );
  }
}
