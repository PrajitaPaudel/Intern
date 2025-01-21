import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intern_project/common_widget/small_text.dart';
import 'package:intern_project/common_widget/t_rating_progress_indicator.dart';

import 'big_text.dart';
class TRating extends StatelessWidget {
  const TRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BigText(
              text: '4.4',
              fontWeight: FontWeight.w600,
              size: 40,
              padding: EdgeInsets.only(
                  right: 30, left: 10, top: 20, bottom: 10),
            ),
            //IconButton(onPressed: (){}, icon:Icon(Icons.star,color: Colors.orange,)),
            RatingBarIndicator(
              rating: 4,
              itemSize: 25,
              itemBuilder: (_, __) => Icon(
                Icons.star,
                color: Colors.orange,
              ),
            ),
            SmallText(
              text: 'Base on 532 review',
              size: 15,
              textColor: Colors.grey.shade400,
              fontWeight: FontWeight.w600,
            )
          ],
        ),
        SizedBox(
          width: 50,
        ),
        Column(
          children: [
            //IconButton(onPressed: (){}, icon:Icon(Icons.star,color: Colors.orange,))
            TRatingProgressIndicator(
              rating: '1',
              value: 0.1,
            ),
            SizedBox(
              height: 5,
            ),
            TRatingProgressIndicator(
              rating: '2',
              value: 0.2,
            ),
            SizedBox(
              height: 5,
            ),
            TRatingProgressIndicator(
              rating: '3',
              value: 0.4,
            ),
            SizedBox(
              height: 5,
            ),
            TRatingProgressIndicator(
              rating: '4',
              value: 0.6,
            ),
            SizedBox(
              height: 5,
            ),
            TRatingProgressIndicator(
              rating: '5',
              value: 0.9,
            ),
          ],
        )
      ],
    );
  }
}
