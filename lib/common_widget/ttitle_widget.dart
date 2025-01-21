import 'package:flutter/material.dart';
import 'package:intern_project/common_widget/small_text.dart';

import 'big_text.dart';

class TTitleWidget extends StatelessWidget {
   TTitleWidget({
    super.key, required this.name, required this.iconText, this.onTap,
  });
  final String name;
  final String iconText;
   final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BigText(text: name,fontWeight: FontWeight.w800
          ,size: 21,),
        const Spacer(),
        GestureDetector(
            onTap: onTap,
            child: SmallText(text: iconText,textColor:Colors.blue.shade800,size: 14,fontWeight: FontWeight.w600,))

      ],
    );
  }
}
