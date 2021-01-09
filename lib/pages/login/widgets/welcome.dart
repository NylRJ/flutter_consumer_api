import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/utils.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

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
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Zafer',
                        style: TextStyle(
                            fontSize: responsive.ip(3.5),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'raleway'),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 205,
                  left: 0,
                  right: 150,
                  child: SvgPicture.asset(
                    'assets/pages/login/linkV.svg',
                    width: contrains.maxWidth,
                    height: contrains.maxHeight * 0.2,
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 90,
                  right: 0,
                  child: SvgPicture.asset(
                    'assets/pages/login/fundo.svg',
                    width: contrains.maxWidth * 10,
                    height: contrains.maxHeight * 0.4,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 190,
                  child: SvgPicture.asset(
                    'assets/pages/login/caminhao.svg',
                    width: contrains.maxWidth * 10,
                    height: contrains.maxHeight * 0.7,
                  ),
                ),
                Positioned(
                  top: contrains.maxHeight * 0.18,
                  child: SvgPicture.asset(
                    'assets/pages/login/operariob.svg',
                    width: contrains.maxWidth * 0.15,
                  ),
                ),
                Positioned(
                  top: contrains.maxHeight * 0.18,
                  right: 5,
                  child: SvgPicture.asset(
                    'assets/pages/login/operariop.svg',
                    width: contrains.maxWidth * 0.26,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
