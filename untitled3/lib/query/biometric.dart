import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:local_auth/local_auth.dart';

class BioMetricAuth{
  static bool authStatus = false;
  static final storage = FlutterSecureStorage();
  static String? user;
  static String? password;
  static final LocalAuthentication _auth = LocalAuthentication();

  static Future<void> addAuth(String emailAddress,String password) async {
    if(BioMetricAuth.authStatus==false){
      await storage.write(key: 'user', value: emailAddress);
      await storage.write(key: 'password', value: password);
    }
  }

  static Future<void> checkAuth() async {
    user = await storage.read(key: 'user');
    password = await storage.read(key: 'password');
    if(user!=null&&password!=null){
      authStatus=true;
    } else {
      authStatus = false;
    }
  }

  Future<String> bioMetrics() async {
    try{
      final support = await _auth.isDeviceSupported();
      final available = await _auth.getAvailableBiometrics();
      final authenticated = await _auth.authenticate(localizedReason: "Face Id Login",options: const AuthenticationOptions(biometricOnly: true));
      if(support==true){
        if(available.contains(BiometricType.face)){
          if(authenticated){
            return "";
          }else{
            return "Failed to Authenticate. Try Again...";
          }
        } else {
          return "Please enable Face biometrics from Setting";
        }
      } else{
        return "Device not support Face Authentication";
      }
    } catch(e){
      return e.toString();
    }
  }

}