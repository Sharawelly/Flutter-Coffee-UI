import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      child: Row(
        children: [
          // Without Expanded, theTextField has no clear width limit and can exceed the screen boundary, causing an overflow error.
          // To fix it, you need to constrain the width of SearchAnchor.bar. The simplest solution is to wrap it in an Expanded (or Flexible) widget so it can size itself within the available space
          Expanded(
            // Expanded here to to make the search bar take the remaining space (horizontally).
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0x2AFFFFFF),
                  borderRadius: BorderRadius.circular(12)),
              height: 50,
              // color: Colors.black12,
              child: TextField(
                // control  which  virtual keyboard should be opened when the users taps into  this TextField
                keyboardType: TextInputType.text,
                // this type is opened by default
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Search Coffee',
                    style: TextStyle(
                      color: Color.fromARGB(142, 255, 255, 255),
                    ),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 198, 124, 78),
                borderRadius: BorderRadius.circular(12)),
            child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.tune_sharp,
              ),
              iconSize: 30,
            ),
          )
        ],
      ),
    );
  }
}
