import 'package:flutter/material.dart';

class AppShadows {
  AppShadows._();

  static List<BoxShadow> card = [
    BoxShadow(
      color: Colors.black.withOpacity(.05),
      blurRadius: 25,
      spreadRadius: 0,
      offset: const Offset(0, 10),
    ),
  ];

  static List<BoxShadow> button = [
    BoxShadow(
      color: Colors.black.withOpacity(.08),
      blurRadius: 18,
      offset: const Offset(0, 8),
    ),
  ];
}