import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../common_widget/big_text.dart';
import '../common_widget/circular_container.dart';
import '../common_widget/small_text.dart';



class HotelName extends StatelessWidget {
  const HotelName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BigText(text: 'The Aston Vill Hotel',fontWeight: FontWeight.w800,size: 22,),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.location_on,color: Colors.blue.shade800,),
                SmallText(text: 'Veum Point MichiKoton',size: 13,textColor: Colors.grey,fontWeight: FontWeight.w600,),
                SizedBox(width: 33,),
                Icon(Icons.star,color: Colors.orange,),
                SizedBox(width: 6,),
                SmallText(text: '4.6',size: 17,fontWeight: FontWeight.w700,)
              ],
            ),

          ],
        ),
       const Spacer(),
        TCircularContainer
          (

            radius:40 ,
            backgroundColor: Colors.blue.withOpacity(0.1),
            child: IconButton(onPressed: (){}, icon:Icon(Iconsax.d_rotate,size: 35,color: Colors.blue.shade800,))
        ),
      ],
    );
  }
}