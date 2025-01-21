import 'package:flutter/material.dart';

import 'big_text.dart';


class TRatingProgressIndicator extends StatelessWidget {
  const TRatingProgressIndicator({
    super.key, required this.rating, required this.value,
  });
  final String rating;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BigText(text: rating,size: 12,color: Colors.grey.shade600,),
        SizedBox(width: 10,),
        SizedBox(
          width: 140,
          child: LinearProgressIndicator(
            value: value,
            minHeight: 6,
            backgroundColor: Colors.grey.shade300,
            color: Colors.blueAccent.shade700 ,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}