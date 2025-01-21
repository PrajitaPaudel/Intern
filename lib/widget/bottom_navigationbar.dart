import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intern_project/common_widget/Custom_button.dart';
import 'package:intern_project/common_widget/big_text.dart';
import 'package:intern_project/common_widget/small_text.dart';
import 'package:intern_project/page/detail_page.dart';


class TBottomNavigationBar extends StatelessWidget {
  const TBottomNavigationBar({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(

            color: Colors.blueGrey.withOpacity(0.2),
            blurRadius: 6.0,
            spreadRadius: 2,



          ),

        ],
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Price Text and Amount in a Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
             SmallText(text: 'Price',size: 16,textColor: Colors.blueGrey.shade200,fontWeight: FontWeight.w500),
              const SizedBox(height: 4),
              BigText(text: '\$120.00',fontWeight: FontWeight.w700,size: 26,)
            ],
          ),
          // Button
         CustomButton(
           color: Colors.blueAccent.shade700,
           borderRadius: 14,
             width: 200,
             text: 'Booking Now',
             onTap: (){
             Get.to(()=>DetailPage());
             })
        ],
      ),
    );
  }
}
