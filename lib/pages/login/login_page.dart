import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_avancada/utils/responsive.dart';

import '../login/widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with AfterLayoutMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }

  @override
  void afterFirstLayout(BuildContext context) {
    final bool isTable = MediaQuery.of(context).size.shortestSide >= 600;
    if (!isTable) {
      //smartphone
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    }
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: OrientationBuilder(builder: (_, Orientation orientation) {
            if (orientation == Orientation.portrait) {
              return SingleChildScrollView(
                child: Container(
                  height: responsive.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Welcome(orientation:orientation), LoginForm()],
                  ),
                ),
              );
            } else {
              return Row(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        height: responsive.height,
                        child: Center(child: Welcome()),
                        ),
                        ),
                        ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: responsive.height,
                        child: Center(child: LoginForm()),
                      ),
                    ),
                  ),
                ],
              );
            }
          }),
        ),
      ),
    );
  }
}
