import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/utils.dart';


class Welcome extends StatelessWidget {
  Orientation orientation;
  Welcome({this.orientation});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final bool isTable = MediaQuery.of(context).size.shortestSide >= 600;

    return AspectRatio(
      aspectRatio: 16 / 11,
      child: LayoutBuilder(
        builder: (_, contrains) {
          return Container(
            child: Stack(
              children: [
                Positioned(
                  top: contrains.maxHeight * 0.9,
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: contrains.maxWidth,
                        color: Color(0xffcccccc),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      
                    ],
                  ),
                ),
                //linkLogo(orientation, isTable, contrains.maxWidth, contrains.maxHeight),
               
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

                Transform.translate(
                  offset: Offset(80,250),
                  child: SvgPicture.asset(
                          'assets/pages/login/zafer.svg',
                          width: contrains.maxWidth ,
                          height: contrains.maxHeight * 0.7,
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
