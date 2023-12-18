



import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  Responsive({Key? key, required this.mobile, required this.desktop})
      : super(key: key);
  final Widget mobile;
  final Widget desktop;

  static bool ismobile(BuildContext context) =>
      MediaQuery
          .of(context)
          .size
          .width < 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery
          .of(context)
          .size
          .width >= 1100;


  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery
        .of(context)
        .size;
    if (_size.width >= 1100) {
      return desktop;
    } else {
      return mobile;
    }
  }
}