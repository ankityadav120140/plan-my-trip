// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:plan_my_trip/consts/assets.dart';
import 'package:sizer/sizer.dart';

class DetailScreenAppBar extends StatelessWidget {
  const DetailScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
        expandedHeight: 50.h,
        pinned: true,
        stretch: true,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            MAIN_MOUNTAIN,
            fit: BoxFit.cover,
          ),
          stretchModes: const [
            StretchMode.blurBackground,
            StretchMode.zoomBackground,
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0.0),
          child: Container(
            height: 32.0,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32.0),
                topRight: Radius.circular(32.0),
              ),
            ),
          ),
        ),
        leadingWidth: 80.0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ));
  }
}
