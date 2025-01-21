import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intern_project/common_widget/big_text.dart';
import 'package:intern_project/common_widget/small_text.dart';
import 'package:intern_project/widget/bottom_navigationbar.dart';
import 'package:intern_project/widget/common_facilites_widget.dart';
import 'package:intern_project/widget/facilities_icons.dart';
import 'package:intern_project/widget/hotelname_widget.dart';
import 'package:readmore/readmore.dart';

import 'common_widget/circular_container.dart';
import 'common_widget/curved_widget.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: TBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TCurvedWidget(
              child: Container(
                height: 400,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/hotel1.jpg',
                      fit: BoxFit.fill,
                      height: 400,
                      width: double.infinity,
                    ),
                    AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0, // Remove shadow
                      title: BigText( text: 'Detail',color: Colors.white,fontWeight: FontWeight.w800,),
                      centerTitle: true,
                      leading: IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          // Handle back button press
                          Navigator.pop(context);
                        },
                      ),
                      actions: [
                        Builder(
                          builder: (context) {
                            return IconButton(
                              icon: Icon(Icons.more_vert, color: Colors.white,size: 40,),
                              onPressed: () {
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HotelName(),
                  SizedBox(height: 25,),
                  CommonFacilities(),
                  BigText(text: "Description", fontWeight: FontWeight.w800),
                  SizedBox(height: 15,),
                  ReadMoreText(
                    "A hotel is a place of comfort and luxury designed to provide travelers with a welcoming and relaxing environment. Whether you're on a business trip, a family vacation, or a romantic getaway, hotels cater to your needs with a variety of amenities and services. From elegantly designed rooms equipped with modern conveniences like Wi-Fi, air conditioning, and plush bedding to on-site restaurants serving delectable cuisines, hotels strive to make every stay memorable. Many hotels also offer additional facilities such as swimming pools, fitness centers, spas, and concierge services to enhance your experience.",
                    style: TextStyle(color: Colors.blueGrey.shade500,fontSize: 14,fontWeight: FontWeight.w500),
                    trimLines: 3,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Read More",
                    trimExpandedText: "Less",
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800,color:Colors.blue.shade500 ),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800,color:Colors.blue.shade500),
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






