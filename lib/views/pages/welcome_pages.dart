import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../consts/constants.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final currentPageIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return Stack(
          children: [
            PageView.builder(
              onPageChanged: (index) {
                currentPageIndex.value = index;
              },
              itemCount: WELCOME_SCREENS.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return WELCOME_SCREENS[index];
              },
            ),
            Positioned(
              top: 25.h,
              right: 2.w,
              child: DotsIndicator(
                axis: Axis.vertical,
                dotsCount: 3,
                position: currentPageIndex.value,
                decorator: DotsDecorator(
                  color: Colors.grey,
                  activeColor: Colors.blue,
                  activeSize: Size(10.sp, 4.h),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
