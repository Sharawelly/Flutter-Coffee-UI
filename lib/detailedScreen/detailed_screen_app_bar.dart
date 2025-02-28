import 'package:flutter/material.dart';

// we implements PreferredSizeWidget because appBar in Scaffold needs this type
class DetailedScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const DetailedScreenAppBar({super.key, required this.switchToStartScreen});

  final void Function() switchToStartScreen;

  @override
  Widget build(BuildContext context) {
    // ✔ Used leading: for the back arrow → Ensures it's on the left.
    // ✔ Used actions: for the heart icon → Ensures it's on the right.
    // ✔ Added centerTitle: true → Ensures "Detail" is centered on iOS & Android.
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        // Ensures "Detail" is centered
        title: Text(
          'Detail',
        ),
        // Title in the center
        leading: IconButton(
          onPressed: switchToStartScreen, // Handle back action
          icon: Icon(Icons.arrow_back_ios),
        ),
        // Places arrow icon on the left
        actions: [
          IconButton(
              onPressed: () {}, // Handle favorite action
              icon: Image.asset(
                'assets/images/heart.png',
                height: 35,
                width: 35,
              )), // Places heart icon on the right
        ],
      ),
    );
  }

  // This overrides the preferredSize property, which is required when implementing PreferredSizeWidget,
  // It tells Flutter how tall the custom AppBar should be.
  // preferredSize is a getter property that returns a Size object,
  // It defines the height (and width, though width is usually ignored) for widgets implementing PreferredSizeWidget.
  // kToolbarHeight is a constant value in Flutter that represents the default height of an AppBar.
  // const double kToolbarHeight = 56.0;
  // This means the AppBar will be 56 pixels high (default height in Material Design).
  // If we don’t override preferredSize, Flutter will not know the height of the custom AppBar, causing errors.
  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // Required for AppBar
}
