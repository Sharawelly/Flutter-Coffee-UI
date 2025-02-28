import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeeSize extends StatefulWidget{
  const CoffeeSize({super.key});

  @override
  State<CoffeeSize> createState() {
    return _CoffeeSizeState();
  }

}

class _CoffeeSizeState extends State<CoffeeSize>{
  int currentSize = 1;

  void switchSize(int index){
    setState(() {
      currentSize = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const List<String> coffeeSize = ['S', 'M', 'L'];


    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Size',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              // converting the list to a map using ".asMap()" and iterating over ".entries"
              // entry is a key value pair {(int) index, (String) element in list}
              // entry.key --> Index of the item in the list, entry.value --> Actual value in the list
              ...coffeeSize.asMap().entries.map((entry){
                return Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                  child: TextButton(
                    onPressed: () {
                      switchSize(entry.key);
                    }, // Set action here
                    style: TextButton.styleFrom(
                      backgroundColor: currentSize == entry.key ? Color.fromARGB(255, 249, 242, 237) : Colors.white, // Button background color
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12), // Increase width & height
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15), // Rounded corners
                        // rgba(217,171,143,255)
                        side: BorderSide(color: currentSize == entry.key ? Color.fromARGB(255, 217, 171, 143)  : Color.fromARGB(255, 236, 236, 236), width: 2), // Border
                      ),
                    ),
                    child: Text(
                      entry.value,
                      style: TextStyle(
                        fontSize: 18, // Text size
                        color: currentSize == entry.key ? Color.fromARGB(255, 217, 171, 143) : Colors.black, // Text color
                      ),
                    ),
                  ),

                );
              })
            ],
          ),
        ],
      ),
    );
  }

}