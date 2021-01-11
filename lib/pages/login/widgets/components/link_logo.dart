import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget linkLogo(
    Orientation orientation, bool isTable, double width, double height) {
  if (orientation == Orientation.portrait) {
    return Positioned(
      top: isTable ? 380 : 205,
      left: 0,
      right: isTable ? 280 : 150,
      child: SvgPicture.asset(
        'assets/pages/login/linkV.svg',
        width: width,
        height: height * 0.2,
      ),
    );
  } else {
    return Positioned(
      top: isTable ? 305 : 205,
      left: 0,
      right: isTable ? 270 : 150,
      child: SvgPicture.asset(
        'assets/pages/login/linkV.svg',
        width: width,
        height: height * 0.2,
      ),
    );
  }
}
