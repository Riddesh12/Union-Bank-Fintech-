import 'package:flutter/material.dart';
import 'package:untitled3/Design/home_page.dart';
import 'package:untitled3/query/fetchdata.dart';

/*
Add verification in line number 174
*/
class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  bool _obsurcureTextAccount = false;
  bool _obsurcureTextPassword = false;
  bool _obsurcureTextAadhaar = false;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController account = TextEditingController();
  TextEditingController ifsc = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController adhare = TextEditingController();
  TextEditingController password = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'SignUp',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(15)),
              TextField(
                controller: name,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: 'Name :',
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.grey[300],
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  hintText: 'Email',
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.grey[300],
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: account,
                keyboardType: TextInputType.number,
                obscureText: _obsurcureTextAccount,
                decoration: InputDecoration(
                  hintText: 'Account Number',
                  labelText: 'Account Number',
                  icon: IconButton(
                    icon: Icon(_obsurcureTextAccount
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _obsurcureTextAccount = !_obsurcureTextAccount;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.grey[300],
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: ifsc,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'IFSC Number',
                  labelText: 'IFSC Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.grey[300],
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: phone,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.grey[300],
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: adhare,
                keyboardType: TextInputType.number,
                obscureText: _obsurcureTextAadhaar,
                decoration: InputDecoration(
                  hintText: 'Aadhar Number',
                  labelText: 'Aadhar Number',
                  icon: IconButton(
                    icon: Icon(_obsurcureTextAadhaar
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _obsurcureTextAadhaar = !_obsurcureTextAadhaar;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.grey[300],
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: password,
                keyboardType: TextInputType.visiblePassword,
                obscureText: _obsurcureTextPassword,
                decoration: InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                  icon: IconButton(
                    icon: Icon(_obsurcureTextPassword
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _obsurcureTextPassword = !_obsurcureTextPassword;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.grey[300],
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  final map = {
                    "name":name.text.trim(),
                    "email":email.text.trim(),
                    "account":account.text.trim(),
                    "ifsc":ifsc.text.trim(),
                    "phone":phone.text.trim(),
                    "adhare":adhare.text.trim(),
                    "password":password.text.trim(),
                  };
                  final res = await Detail().signIn(email.text.trim(), password.text.trim());
                  if(res==""){
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => HomePage()));
                  } else{

                  }
                },
                child: Text(
                  'Verification', //<-- verification
                  style: TextStyle(
                    backgroundColor: Colors.purple[300],
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
