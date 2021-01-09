import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/utils.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color backgroundColor;
  const RoundedButton({Key key, @required this.label, @required this.onPressed, this.backgroundColor})
      : assert(label != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      child: Container(
        child: Text(
          label,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'sans',
              letterSpacing: 1,
              fontSize: 18),
        ),
        decoration: BoxDecoration(
            color: backgroundColor??AppColors.primaryColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)]),
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      ),
      onPressed: onPressed,
    );
  }
}
