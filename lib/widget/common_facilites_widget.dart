import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../common_widget/big_text.dart';
import '../common_widget/small_text.dart';
import 'facilities_icons.dart';

class CommonFacilities extends StatelessWidget {
  const CommonFacilities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            BigText(text: 'Common Facilities',fontWeight: FontWeight.w800,size: 20 ,),
            const Spacer(),
            GestureDetector(
              onTap: (){},
                child: SmallText(text: 'See All',textColor: Colors.blue.shade800,size: 14,fontWeight: FontWeight.w500,))
          ],
        ),
        SizedBox(height: 15,),
        SizedBox(
          height: 140,
          child: ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return const Row(
                  children: [
                    TFacilitiesIcons(
                      text: 'Ac',
                      icon: Icons.air_outlined,),
                    SizedBox(width: 20,),
                    TFacilitiesIcons(
                      text: 'Restaurant',
                      icon: Iconsax.building,),
                    SizedBox(width: 20,),
                    TFacilitiesIcons(
                      text: 'Swimming',
                      extraText: 'Pool',
                      icon: Icons.pool,),
                    SizedBox(width: 20,),
                    TFacilitiesIcons(
                      text: '24-Hours',
                      extraText: 'Front Desk',
                      icon: Icons.twenty_four_mp,),
                    SizedBox(width: 20,),
                  ],
                );
              }
          ),
        )
      ],
    );
  }
}