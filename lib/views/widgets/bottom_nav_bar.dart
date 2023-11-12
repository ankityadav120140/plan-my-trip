// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plan_my_trip/consts/constants.dart';
import 'package:plan_my_trip/contollers/bottom_nav_controller.dart';
import 'package:sizer/sizer.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  BottomNavController bottomNavController = Get.put(BottomNavController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: PAGES[bottomNavController.currentPage.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomNavController.currentPage.value,
          onTap: (index) {
            bottomNavController.currentPage.value = index;
          },
          selectedIconTheme: IconThemeData(size: 30.sp),
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: 'Stats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      );
    });
  }
}
