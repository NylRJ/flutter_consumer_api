import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InputTextLogin extends StatelessWidget {
  final String iconPath;
  final String placeholder;

  const InputTextLogin(
      {Key key, @required this.iconPath, @required this.placeholder})
      : assert(iconPath != null && placeholder != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoTextField(
        padding: EdgeInsets.symmetric(vertical: 7, horizontal: 5),
        prefix: Container(
          width: 40,
          height: 30,
          padding: EdgeInsets.all(2),
          child: SvgPicture.asset(
            iconPath,
            color: Colors.red[200],
          ),
        ),
        placeholder: placeholder,
        placeholderStyle:TextStyle(fontFamily: 'sans', color: Color(0xffcccccc)),
        style: TextStyle(
          fontFamily: 'sans',
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: Color(0xffcccccc),
            ),
          ),
        ),
      ),
    );
  }
}
