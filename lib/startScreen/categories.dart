
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget{
  const Categories({required this.categories, super.key});

  final List<String> categories;

  @override
  State<Categories> createState() {
    return _CategoriesState();
  }
}

class _CategoriesState extends State<Categories>{

  int selectedIndex = 0;

  void switchColor (int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.categories.length,
            itemBuilder: (context, index) {
                return Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        switchColor(index);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 0,
                        ),
                        decoration: BoxDecoration(
                          color: selectedIndex == index ? Colors.brown : Colors.white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(
                          child: Text(widget.categories[index],
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        )
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                );
            }
        ),
      ),
    );
  }


}