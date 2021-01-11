import 'package:firebase_auth/firebase_auth.dart';

import 'package:google_sign_in/google_sign_in.dart';

class Auth {
  Auth._internal();
  static Auth get instance => Auth._internal();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  User get user {
    return _firebaseAuth.currentUser;
  }

  Future<User> google() async {
    try {
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication authentication =
          await googleUser.authentication;

      final OAuthCredential credential = GoogleAuthProvider.credential(
        idToken: authentication.idToken,
        accessToken: authentication.accessToken,
      );

      final UserCredential userCredential =
          await _firebaseAuth.signInWithCredential(credential);

      final User user = userCredential.user;

      print("username: ${user.displayName} ");
      return user;
     
    } catch (e) {
      print(e);

      return null;
    }
  }
}
