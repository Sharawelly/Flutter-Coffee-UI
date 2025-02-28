
import 'package:coffee_app/data/coffe_items_data.dart';
import 'package:coffee_app/model/coffee_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Authentication/loginScreen/login_screen.dart';
import 'Authentication/signupScreen/signup_screen.dart';
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
  String currentScreen = 'signup-screen';
  final List<CoffeeItem> coffeeItems = coffeeItemsData;
  int index = 0;

  void switchScreen() {
    setState(() {
      currentScreen = 'detailed-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    final PreferredSizeWidget? applicationBar;
    final Widget appBody;
    final Color color;
    if(currentScreen == 'login-screen'){
      applicationBar = null;
      appBody = LoginScreen();
      color = Color(0xFF2CC5D3);
    }
    else if(currentScreen == 'signup-screen'){
      applicationBar = null;
      appBody = SignupScreen();
      color = Color(0xFF2CC5D3);
    }
    else if(currentScreen == 'start-screen'){
      applicationBar = null;
      appBody = MyHome(
        coffeeItems: coffeeItems,
        switchScreen: switchScreen,
      );
      color = Colors.black;
    }
    else {
      applicationBar = DetailedScreenAppBar();
      appBody = DetailedScreen(coffeeItem: coffeeItems[index]);
      color = Color.fromARGB(255, 249, 249, 249);
    }
    return Scaffold(
      appBar: applicationBar,
      backgroundColor: color,
      body: appBody
    );
  }
}
