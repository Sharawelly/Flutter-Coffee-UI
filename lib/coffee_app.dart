
import 'package:coffee_app/data/coffe_items_data.dart';
import 'package:coffee_app/model/coffee_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detailedScreen/detailed_screen.dart';
import 'detailedScreen/detailed_screen_app_bar.dart';
import 'startScreen/my_home.dart';

class CoffeeAPP extends StatefulWidget {
  const CoffeeAPP({super.key});

  @override
  State<CoffeeAPP> createState() {
    return _CoffeeAPPState();
  }
}

class _CoffeeAPPState extends State<CoffeeAPP> {
  String currentScreen = 'detailed-screen';
  final List<CoffeeItem> coffeeItems = coffeeItemsData;
  int index = 0;

  void switchScreen() {
    setState(() {
      currentScreen = 'detailed-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: currentScreen == 'start-screen' ? null : DetailedScreenAppBar(),
      backgroundColor:
          // rgba(249,249,249,255)
          currentScreen == 'start-screen' ? Colors.black : Color.fromARGB(255, 249, 249, 249),
      body: currentScreen == 'start-screen'
          ? MyHome(
              coffeeItems: coffeeItems,
              switchScreen: switchScreen,
            )
          : DetailedScreen(coffeeItem: coffeeItems[index],),
    );
  }
}
