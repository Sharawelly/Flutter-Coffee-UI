import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 75, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Location',
                style: TextStyle(
                  color: Color.fromARGB(142, 255, 255, 255),
                ),
              ),
              Spacer(),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage('assets/images/me.jpg'),
                        fit: BoxFit.fill)),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Bilzen, Tanjungbalai',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
