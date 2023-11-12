// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:plan_my_trip/consts/constants.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            Container(
              height: 4.h,
              width: 4.h,
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 2.h),
              Text(
                "Discover",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
              ),
              SizedBox(height: 2.h),
              TabBar(
                controller: _tabController,
                tabs: [
                  Tab(text: 'Places'),
                  Tab(text: 'Inspiration'),
                  Tab(
                    text: 'Emotions',
                  )
                ],
              ),
              SizedBox(height: 1.h),
              Container(
                height: 35.h,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Center(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: PLACES.length,
                        itemBuilder: (context, index) {
                          return PLACES[index];
                        },
                      ),
                    ),
                    Center(
                      child: Text('NONE FOUND!'),
                    ),
                    Center(
                      child: Text('NONE FOUND!'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Explore more",
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("See All"),
                  ),
                ],
              ),
              Container(
                height: 20.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: EXPLORE.length,
                  itemBuilder: (context, index) {
                    return EXPLORE[index];
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
