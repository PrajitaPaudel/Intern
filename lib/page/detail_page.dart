import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intern_project/common_widget/circular_container.dart';
import 'package:intern_project/common_widget/small_text.dart';
import 'package:intern_project/common_widget/t_menuitem.dart';
import 'package:intern_project/common_widget/t_rounded_images.dart';
import 'package:intern_project/page/all_facilities_page.dart';
import 'package:intern_project/widget/bottom_navigationbar.dart';
import 'package:readmore/readmore.dart';

import '../common_widget/big_text.dart';
import '../common_widget/row_grid_layot.dart';
import '../common_widget/ttitle_widget.dart';
import '../widget/horizontal_card.dart';
import '../widget/review_des_widget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TBottomNavigationBar(),
      appBar: AppBar(
        title: BigText(
          text: 'Detail',
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
            // Handle back button press
            Navigator.pop(context);
          },
        ),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(
                  Icons.more_vert,
                  size: 35,
                ),
                onPressed: () {},
              );
            },
          ),
        ],
        elevation: 4.0,
        shadowColor: Colors.grey.withOpacity(0.2),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TTitleWidget(
                name: 'Location',
                iconText: 'Open Map',
              ),
              TCircularContainer(
                width: 400,
                radius: 20,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                border: Border.all(color: Colors.grey.shade200),
                child: Column(
                  children: [
                    TCircularContainer(
                      margin: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          TRoundedImages(
                              height: 120,
                              width: double.infinity,
                              fit: BoxFit.fill,
                              imageUrl: 'assets/map.jpg'),
                          SizedBox(
                            height: 17,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.blue.shade800,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SmallText(
                                text: '9175 Chestnut StreetRome,NY 13440',
                                size: 15,
                                textColor: Colors.grey.shade400,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TTitleWidget(name: 'Reviews', iconText: 'See All'),
              SizedBox(
                height: 25,
              ),
              TVerticalRowLayout(
                  itemCount: 2,
                  itemBuilder: (BuildContext, int) {
                    return ReviewWidget(
                      name: 'Kim Borrdy',
                      description:
                          "A hotel is a place of comfort and luxury designed to provide travelers .",
                      rate: '4.6',
                      imageUrl: 'assets/people2.jpeg',
                    );
                  }),
              SizedBox(
                height: 10,
              ),
              TTitleWidget(name: 'Recommendation', iconText: 'See All'),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 500,
                height: 150,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  itemBuilder: (_, index) {
                    return SizedBox(
                      width: 355,
                      child: TPlaceCardHorizontal(
                        imageUrl: 'assets/temple1.jpg',
                        placeName: 'Swayambhu',
                        cityName: 'Kathmandu',
                        reviewRate: '4.9',
                        price: '499',
                        cityIcon: Icons.location_on,
                        onTap: () {},
                        discountPrice: '345',
                        rate: '(777)',
                      ),
                    );
                  },
                ),
              ),
              TMenuItem(
                  itemName: 'home',
                  icon: Icons.ice_skating,
                  onTap: (){
                    Get.to(()=>AllFacilitiesPage());
                  }, des: '(3 facilitate)',)
            ],
          ),
        ),
      ),
    );
  }
}
