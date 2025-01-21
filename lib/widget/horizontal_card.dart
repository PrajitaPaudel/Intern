import 'package:flutter/material.dart';
import 'package:intern_project/common_widget/small_text.dart';

import '../common_widget/circular_container.dart';
import '../common_widget/t_rounded_images.dart';


class TPlaceCardHorizontal extends StatelessWidget {
  final String imageUrl;
  final String placeName;
  final String cityName;
  final String reviewRate;
  final String rate;
  final String price;
  final String discountPrice;
  final IconData cityIcon;
  final VoidCallback onTap;

  const TPlaceCardHorizontal({
    required this.imageUrl,
    required this.placeName,
    required this.cityName,
    required this.reviewRate,
    required this.price,
    required this.discountPrice,
    required this.cityIcon,
    required this.onTap,
    Key? key, required this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.3)),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            TCircularContainer(
              height: 100,
              width: 100,
              radius: 12,
              backgroundColor: Colors.grey[200],
              child: TRoundedImages(
                imageUrl: imageUrl,
                applyImageRadius: true,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    placeName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(cityIcon, color: Colors.blueGrey, size: 18),
                      const SizedBox(width: 6),
                      Text(
                        cityName,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 18),
                      const SizedBox(width: 4),
                      Text(
                        reviewRate,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                      const SizedBox(width: 2),
                      Text(
                        rate,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '\$$price',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        '\$$discountPrice',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

