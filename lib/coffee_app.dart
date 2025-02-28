
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
  String currentScreen = 'start-screen';
  final List<CoffeeItem> coffeeItems = coffeeItemsData;
  int index = 0;

  void switchScreenToLogin() {
    setState(() {
      currentScreen = 'login-screen';
    });
  }

  void switchScreenToSignup() {
    setState(() {
      currentScreen = 'signup-screen';
    });
  }

  void switchScreenToStartScreen() {
    setState(() {
      currentScreen = 'start-screen';
    });
  }

  void switchScreenToDetailed() {
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
      appBody = LoginScreen(
        switchToSignupScreen: switchScreenToSignup,
        switchToStartScreen: switchScreenToStartScreen,
      );
      color = Color(0xFF2CC5D3);
    }
    else if(currentScreen == 'signup-screen'){
      applicationBar = null;
      appBody = SignupScreen(
        switchToLoginScreen: switchScreenToLogin,
      );
      color = Color(0xFF2CC5D3);
    }
    else if(currentScreen == 'start-screen'){
      applicationBar = null;
      appBody = MyHome(
        coffeeItems: coffeeItems,
        switchScreen: switchScreenToDetailed,
      );
      color = Colors.black;
    }
    else {
      applicationBar = DetailedScreenAppBar(
        switchToStartScreen: switchScreenToStartScreen,
      );
      appBody = DetailedScreen(switchToStartScreen: switchScreenToStartScreen, coffeeItem: coffeeItems[index]);
      color = Color.fromARGB(255, 249, 249, 249);
    }
    return Scaffold(
      appBar: applicationBar,
      backgroundColor: color,
      body: appBody
    );
  }
}
