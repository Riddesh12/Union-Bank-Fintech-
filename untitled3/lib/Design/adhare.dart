import 'package:flutter/material.dart';
import 'package:untitled3/Design/home_page.dart';
import 'package:untitled3/Design/signup_page.dart';
class Adhare extends StatefulWidget {
  const Adhare({super.key});

  @override
  State<Adhare> createState() => _AdhareState();
}

class _AdhareState extends State<Adhare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SignUp',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Aadhaar Number',
              labelText: 'Aadhaar Number',
            ),
          ),
          ElevatedButton(
              onPressed: () {
                //////trigger adhar api that send otp
              },
              child: Text(
                'Verification', //<- Verification
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
              )),
          TextField(
            decoration: InputDecoration(
              hintText: 'OTP',
              labelText: 'OTP',
            ),
          ),
          ElevatedButton(
              onPressed: () {
                ///////verify the otp and enter the further process
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupPage()));
              },
              child: Text(
                'Verification', //<- Verification
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
              )),
        ],
      ),
    );
  }
}
