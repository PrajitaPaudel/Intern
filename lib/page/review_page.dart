import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intern_project/common_widget/small_text.dart';

import '../common_widget/big_text.dart';
import '../common_widget/row_grid_layot.dart';
import '../common_widget/t_rating.dart';
import '../common_widget/t_rating_progress_indicator.dart';
import '../widget/review_des_widget.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
        elevation: 0, // Remove shadow
        title: BigText(
          text: 'Reviews',
          fontWeight: FontWeight.w800,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            // Handle back button press
            Navigator.pop(context);
          },
        ),
        actions: [
          Builder(
            builder: (context) {
              return SizedBox(
                width: 110,
                child: IconButton(
                  icon: Icon(
                    Iconsax.textalign_center,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 22),
          child: Column(
            children: [
              TRating(),
              SizedBox(height: 30,),
              Row(
                children: [
                  BigText(text: 'Reviews',fontWeight: FontWeight.w800
                    ,size: 22,),
                  SizedBox(width: 5,),
                  BigText(text: '(532)',fontWeight: FontWeight.w800
                    ,size: 21,),
                ],
              ),
              SizedBox(height: 30,),
              TVerticalRowLayout(
                  itemCount: 6,
                  itemBuilder: (BuildContext, int) {
                    return ReviewWidget(
                      name: 'Kim Borrdy',
                      description:
                      "A hotel is a place of comfort and luxury designed to provide travelers .",
                      rate: '4.6',
                      imageUrl: 'assets/people2.jpeg',
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

