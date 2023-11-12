// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:plan_my_trip/contollers/detail_page_controller.dart';
import 'package:plan_my_trip/views/widgets/detail_screen_app_bar.dart';
import 'package:plan_my_trip/views/widgets/total_people.dart';
import 'package:sizer/sizer.dart';

class PlaceDetails extends StatefulWidget {
  PlaceDetails({required this.place, required this.location, super.key});

  String place;
  String location;

  @override
  State<PlaceDetails> createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails> {
  DetailPageController detailPageController = Get.put(DetailPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          DetailScreenAppBar(),
          SliverToBoxAdapter(
            child: Obx(
              () => Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.place,
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "\$ ${detailPageController.cost}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.deepPurple,
                        ),
                        Text(
                          widget.location,
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      children: [
                        RatingBar.builder(
                          itemSize: 15.sp,
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        Text(
                          "(4.0)",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      "People",
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 20.w,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: ((context, index) {
                          return TotalPeople(index);
                        }),
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Mountains are majestic landforms characterized by their towering heights, steep slopes, and often rugged terrain. They are some of the most awe-inspiring natural features on Earth, with their peaks often reaching into the sky. Here are some key characteristics and aspects of mountains Elevation Mountains are known for their significant elevation above their surrounding terrain. They are typically defined as landforms rising at least 1,000 feet (300 meters) above their surroundings, although this criterion can vary depending on the region.",
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton.outlined(
                          iconSize: 30.sp,
                          onPressed: () {
                            detailPageController.isFavorite.toggle();
                          },
                          icon: detailPageController.isFavorite.isTrue
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : Icon(Icons.favorite_outline),
                        ),
                        InkWell(
                            onTap: () {},
                            child: Container(
                              height: 8.h,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple.shade300,
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  )),
                              width: 70.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Book Trip Now",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    ">>>",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                    SizedBox(height: 5.h),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
