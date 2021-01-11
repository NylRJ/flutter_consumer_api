import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_avancada/libs/libs.dart';

import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';
import '../../../pages/login/widgets/widgets.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return SafeArea(
      top: false,
      child: Container(
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            InputTextLogin(
              iconPath: 'assets/pages/login/icons/email.svg',
              placeholder: 'Email',
            ),
            SizedBox(
              height: responsive.ip(2),
            ),
            InputTextLogin(
              iconPath: 'assets/pages/login/icons/key.svg',
              placeholder: 'Senha',
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.centerRight,
              child: CupertinoButton(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'Esqueceu a senha',
                    style: TextStyle(fontFamily: 'sans'),
                  ),
                  onPressed: () {}),
            ),
            SizedBox(
              height: responsive.ip(2),
            ),
            RoundedButton(
              label: "Entrar",
              onPressed: () {},
            ),
            SizedBox(
              height: responsive.ip(3.3),
            ),
            Text('Ou continue com'),
            SizedBox(
              height: responsive.ip(1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularButton(
                  size: 55,
                  backgroundColor: Color(0xff448AFF),
                  onPressed: () async {},
                  iconPath: 'assets/pages/login/icons/facebook.svg',
                ),
                SizedBox(
                  width: 20,
                ),
                CircularButton(
                  size: 55,
                  backgroundColor: Color(0xffFF1744),
                  onPressed: () async {
                    await Auth.instance.google();
                    print('Logado');
                  },
                  iconPath: 'assets/pages/login/icons/google.svg',
                ),
              ],
            ),
            SizedBox(
              height: responsive.ip(2.7),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Não tem uma conta?'),
                CupertinoButton(
                  child: Text(
                    'Inscrever-se',
                    style: TextStyle(
                        fontFamily: 'sans', fontWeight: FontWeight.w700),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
