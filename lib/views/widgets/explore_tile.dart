// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget ExploreTile(String icon, String title) {
  return Container(
    padding: EdgeInsets.all(2.w),
    height: 20.h,
    child: Column(
      children: [
        Container(
          width: 15.w,
          height: 15.w,
          padding: EdgeInsets.all(3.w),
          decoration: BoxDecoration(
            color: Colors.deepPurple.shade50,
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          child: Image.asset(icon),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 10.sp,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
