import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../widgets/widgets.dart';
import '../../../pages/login/widgets/widgets.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InputTextLogin(
              iconPath: 'assets/pages/login/icons/email.svg',
              placeholder: 'Email',
            ),
            SizedBox(
              height: 20,
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
              height: 20,
            ),
            RoundedButton(
              label: "Entrar",
              onPressed: () {},
            ),
            SizedBox(
              height: 30,
            ),
            Text('Ou continue com'),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularButton(
                  size: 55,
                  backgroundColor: Color(0xff448AFF),
                  onPressed: () {},
                  iconPath: 'assets/pages/login/icons/facebook.svg',
                ),
                SizedBox(
                  width: 20,
                ),
                CircularButton(
                  size: 55,
                  backgroundColor: Color(0xffFF1744),
                  onPressed: () {},
                  iconPath: 'assets/pages/login/icons/google.svg',
                ),
              ],
            ),
            SizedBox(
              height: 30,
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
