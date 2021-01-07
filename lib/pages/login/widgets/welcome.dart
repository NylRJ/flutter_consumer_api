import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 11,
      child: LayoutBuilder(
        builder: (_, contrains) {
          return Container(

            child: Stack(
              children: [
                Positioned(
                  top: contrains.maxHeight * 0.7,
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: contrains.maxWidth,
                        color: Color(0xffeeeeee),
                      ),
                      SizedBox(height: 20,),
                      Text(
                          'Welcome Back!',
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    'assets/pages/login/clouns.svg',
                    width: contrains.maxWidth,
                    height: contrains.maxHeight * 0.7,),

                ),
                Positioned(
                  top: contrains.maxHeight * 0.27,
                  child: SvgPicture.asset('assets/pages/login/woman.svg',width: contrains.maxWidth * 0.35,),

                ),

                Positioned(
                  top: contrains.maxHeight * 0.31,
                  right: 5,
                  child: SvgPicture.asset('assets/pages/login/man.svg',width: contrains.maxWidth * 0.26,),

                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
