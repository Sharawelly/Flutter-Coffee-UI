import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

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
          ReadMoreText(
            description,
            // By default, ReadMoreText shows the full text.
            // You can specify how many lines should be visible before the "Read more" appears using "trimLines"
            trimLines: 3, // Show only 2 lines initially before collapsing
            // The trimMode property in ReadMoreText determines how the text is truncated before showing the "Read more" option.
            // Instead of limiting text by lines, you can limit it by character length using "TrimMode.Length"
            // trimMode: TrimMode.Length, ---> Trim by character count instead of lines
            // trimLength: 100, ---> Show only 100 characters before "Read more"
            trimMode: TrimMode.Line, // Trim by lines (alternative: TrimMode.Length)
            trimCollapsedText: ' Read more',
            trimExpandedText: ' Read less',
            colorClickableText: Color.fromARGB(255, 198, 124, 78), // "Read more" and "Read less" text color (Changes the color of "Read more" and "Read less")
            style: TextStyle(fontSize: 16, color: Color(0x52000000)),
          )

        ],
      ),
    );
  }

}