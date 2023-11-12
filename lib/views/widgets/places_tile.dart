// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plan_my_trip/consts/assets.dart';
import 'package:plan_my_trip/views/pages/place_details.dart';
import 'package:sizer/sizer.dart';

Widget PlacesWidget(String place, String location) {
  return InkWell(
    onTap: () {
      Get.to(
        PlaceDetails(place: place, location: location),
      );
    },
    child: Container(
      width: 50.w,
      height: 35.h,
      padding: EdgeInsets.all(1.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Container(
            width: 50.w,
            height: 35.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                MAIN_MOUNTAIN,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  place,
                  style: TextStyle(fontSize: 15.sp, color: Colors.white),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    Container(
                      width: 30.w,
                      child: Text(
                        location,
                        style: TextStyle(fontSize: 10.sp, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
