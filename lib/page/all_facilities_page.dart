import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intern_project/common_widget/circular_container.dart';
import 'package:intern_project/common_widget/small_text.dart';
import 'package:intern_project/common_widget/t_menuitem.dart';
import 'package:intern_project/page/review_page.dart';

import '../common_widget/big_text.dart';

class AllFacilitiesPage extends StatelessWidget {
  const AllFacilitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BigText(
          text: 'ALL Facilities',
          fontWeight: FontWeight.w800,
          size: 22,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 20),
          child: Column(
            children: [
              TCircularContainer(
               radius: 15,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 20),
                            child: Icon(
                              Icons.storefront_outlined,
                              color: Colors.grey.shade700,
                            ),
                          ),
                          SmallText(
                            text: 'Food and Drink',
                            textColor: Colors.grey.shade700,
                            fontWeight: FontWeight.w700,
                            size: 17,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          SmallText(
                            text: '(4 facilitate)',
                            textColor: Colors.grey.shade500,
                            fontWeight: FontWeight.w500,
                            size: 13,
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.minimize_sharp,
                                  color: Colors.grey.shade700))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      color: Colors.grey.shade100,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 40,
                              ),
                              Icon(
                                Icons.circle,
                                size: 9,
                                color: Colors.grey.shade600,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              SmallText(
                                text: 'A IA Carte Dinner',
                                textColor: Colors.grey.shade500,
                                size: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 40,
                              ),
                              Icon(
                                Icons.circle,
                                size: 9,
                                color: Colors.grey.shade600,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              SmallText(
                                text: 'A IA Carte Lunch',
                                textColor: Colors.grey.shade500,
                                size: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 40,
                              ),
                              Icon(
                                Icons.circle,
                                size: 9,
                                color: Colors.grey.shade600,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              SmallText(
                                text: 'BreakFast',
                                textColor: Colors.grey.shade500,
                                size: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 40,
                              ),
                              Icon(
                                Icons.circle,
                                size: 9,
                                color: Colors.grey.shade600,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              SmallText(
                                text: 'Vegetarian meal',
                                textColor: Colors.grey.shade500,
                                size: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              TMenuItem(
                  itemName: 'Transportation',
                  icon: Iconsax.car,
                  des: '(5 facilities)',
                onTap: (){Get.to(()=>ReviewPage());},
              ),

              TMenuItem(
                  itemName: 'General',
                  icon: Iconsax.setting,
                  des: '(8 facilities)'),

              TMenuItem(
                  itemName: 'Hotel Service',
                  icon: Iconsax.building,
                  des: '(2 facilities)'),
              TMenuItem(
                  itemName: 'Nearby Facilities',
                  icon: Iconsax.buliding,
                  des: '(5 facilities)'),

              TMenuItem(
                  itemName: 'Kids',
                  icon: Iconsax.cake,
                  des: '(3 facilities)'),

              TMenuItem(
                  itemName: 'Connectivity',
                  icon: Iconsax.wifi,
                  des: '(2 facilities)'),

              TMenuItem(
                  itemName: 'Public Facilities',
                  icon: Iconsax.building_4,
                  des: '(5 facilities)'),
            ],
          ),
        ),
      ),
    );
  }
}
