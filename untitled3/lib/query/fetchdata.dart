import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled3/query/biometric.dart';

class Detail{
  Future<String> login(String emailAddress,String password) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress,
          password: password
      );
      if(!BioMetricAuth.authStatus){
        BioMetricAuth.addAuth(emailAddress, password);
      }
      return credential!=null?"":"null";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      else{
        print(e);
      }
      return e.toString();
    } catch (e) {
      print(e);
      return e.toString();
    }
  }

  Future<String> signIn(String emailAddress,String password) async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      if(!BioMetricAuth.authStatus){
        BioMetricAuth.addAuth(emailAddress, password);
      }
      return credential!=null?"":"null";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      else{
        print(e);
      }
      return e.toString();
    } catch (e) {
      print(e);
      return e.toString();
    }
  }
}