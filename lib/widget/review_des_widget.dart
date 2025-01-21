import 'package:flutter/material.dart';

import '../common_widget/circular_container.dart';
import '../common_widget/small_text.dart';
import '../common_widget/t_rounded_images.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    super.key,
    required this.name,
    required this.description,
    required this.rate, required this.imageUrl,
  });
  final String name;
  final String description;
  final String rate;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return TCircularContainer(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TRoundedImages(
            height: 65,
            width: 70,
            borderRadius: 70,
            applyImageRadius: true,
            fit: BoxFit.fill,
            imageUrl: imageUrl,
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: SmallText(
                        text: name,
                        fontWeight: FontWeight.w700,
                        size: 15,
                      ),
                    ),
                    SizedBox(width: 10),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange),
                        SizedBox(width: 6),
                        SmallText(
                          text: rate,
                          size: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Container(
                  height: 70,
                  child: Text(
                    description,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Colors.blueGrey.shade200,
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
