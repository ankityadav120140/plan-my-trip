// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plan_my_trip/contollers/detail_page_controller.dart';
import 'package:sizer/sizer.dart';

Widget TotalPeople(int index) {
  DetailPageController detailPageController = Get.find();
  return GestureDetector(
    onTap: () {
      detailPageController.totalPeople.value = index + 1;
      detailPageController.cost.value = 5538 * (index + 1);
    },
    child: Container(
      height: 20.w,
      width: 20.w,
      decoration: BoxDecoration(
        color: detailPageController.totalPeople.value - 1 == index
            ? Colors.deepPurple.shade100
            : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          "${index + 1}",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
