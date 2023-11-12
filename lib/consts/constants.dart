// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:plan_my_trip/consts/assets.dart';
import 'package:plan_my_trip/views/pages/home_page.dart';
import 'package:plan_my_trip/views/widgets/explore_tile.dart';
import 'package:plan_my_trip/views/widgets/places_tile.dart';

import '../views/widgets/welcome_page_view.dart';

const WELCOME_CONTENT1 =
    "Explore the Uncharted: Embark on an expedition to the heart of the wilderness. With each step, you'll unravel the secrets of remote mountain trails, where tranquility and solitude reign supreme.";

const WELCOME_CONTENT2 =
    "Conquer New Heights: Challenge yourself both mentally and physically as you conquer peaks that touch the clouds. The summit is not just a destination; it's a testament to your determination.";

const WELCOME_CONTENT3 =
    "Nature's Majesty: Witness the majesty of untouched landscapes—towering peaks, pristine alpine lakes, and ancient forests. Nature's grandeur is on full display, and you're front-row center.";

List<Widget> WELCOME_SCREENS = [
  WecomePageView(WELCOME_CONTENT1, WELCOME_IMAGE_1),
  WecomePageView(WELCOME_CONTENT2, WELCOME_IMAGE_2),
  WecomePageView(WELCOME_CONTENT3, WELCOME_IMAGE_3),
];

List<Widget> PLACES = [
  PlacesWidget("Mount Everest", "Nepal and Tibet"),
  PlacesWidget("K2 ", "Pakistan and China"),
  PlacesWidget("Kilimanjaro", "Tanzania"),
  PlacesWidget("Mount Fuji", "Japan"),
  PlacesWidget("Matterhorn", "Switzerland and Italy"),
  PlacesWidget("Mount Kilimanjaro", "Tanzania"),
  PlacesWidget("Mount Rainier", "United States"),
];

List<Widget> EXPLORE = [
  ExploreTile(BALOONING_ICON, "Balooning"),
  ExploreTile(DIVING_ICON, "Diving"),
  ExploreTile(HIKING_ICON, "Hiking"),
  ExploreTile(KAYAKING_ICON, "Kayaking"),
  ExploreTile(SKY_DIVING_ICON, "Skydiving"),
];

List<Widget> PAGES = [
  HomePage(),
  Center(child: Text("Nothing To Show!")),
  Center(child: Text("Nothing To Show!")),
  Center(child: Text("Nothing To Show!")),
];
