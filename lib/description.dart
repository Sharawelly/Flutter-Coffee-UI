import 'package:flutter/cupertino.dart';

class Description extends StatelessWidget{
  const Description({super.key, required this.description});
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '$description...',
            maxLines: 3,
            style: TextStyle(
                color: Color(0x52000000)
            ),
          ),
        ],
      ),
    );
  }

}