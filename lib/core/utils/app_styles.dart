import 'dart:ui';

import 'package:flutter/material.dart';

abstract class AppStyles {
  static const String fontFamily = "Poppins";
static  TextStyle styleMedium14 = const TextStyle(
  fontFamily: fontFamily,
  fontSize: 14,
  fontWeight: FontWeight.w500,
  color: Colors.black,

);
static TextStyle styleBold22 = const TextStyle(
  fontFamily: fontFamily,
  fontSize: 22,
  fontWeight: FontWeight.w700,
  color: Colors.black,);

static TextStyle styleBold18 = const TextStyle(
  fontFamily: fontFamily,
  fontSize: 18,
  fontWeight: FontWeight.w700,
  color: Colors.black,);
static TextStyle styleRegular14 = const TextStyle(
  fontFamily: fontFamily,
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: Colors.black,);
}