import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/utils.dart';

class CircularButton extends StatelessWidget {
  final String iconPath;
  final double size;
  final VoidCallback onPressed;
  final Color backgroundColor;
  const CircularButton(
      {Key key, @required this.onPressed, this.backgroundColor, this.size = 50, @required this.iconPath})
      :assert(iconPath != null) ,super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
          child: Container(
          width: size,
          height: size,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: backgroundColor ?? AppColors.primaryColor,
              shape: BoxShape.circle),
              child: SvgPicture.asset(iconPath,color: Colors.white,),
              ),
    );

  }
}
