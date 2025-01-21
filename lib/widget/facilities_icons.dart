import 'package:flutter/material.dart';

import '../common_widget/circular_container.dart';
import '../common_widget/small_text.dart';



class TFacilitiesIcons extends StatelessWidget {
  const TFacilitiesIcons({
    super.key, required this.text, this.onTap, required this.icon, this.child, this.extraText,
  });
  final String text;
  final  VoidCallback? onTap;
  final   IconData icon;
  final Widget? child;
  final String? extraText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){},
          child: Container(
            child: TCircularContainer
              (
                height: 70,
                width: 70,
                radius:40 ,
                backgroundColor: Colors.blue.withOpacity(0.08),
                child: IconButton(onPressed: (){}, icon:Icon(icon,size: 38,))
            ),
          ),
        ),
        SizedBox(height: 8,),
        SmallText(text: text,size: 14,textColor: Colors.blueGrey.shade300,fontWeight: FontWeight.w600,),
        if (extraText != null) ...[
          const SizedBox(height: 2),
          SmallText(
            textAlign:TextAlign.center,
            text: extraText!,
            size: 14,
            textColor: Colors.blueGrey.shade300,
            fontWeight: FontWeight.w600,
          ),
        ],
      ]
    );
  }
}