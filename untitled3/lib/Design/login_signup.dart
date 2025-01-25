import 'package:flutter/material.dart';
import 'package:untitled3/Design/adhare.dart';
import 'package:untitled3/Design/login_page.dart';

class LoginSignup extends StatelessWidget {
  const LoginSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset('assets/unionBank.png',height: 70,width: 60,),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
        children: [
          Padding(padding: EdgeInsets.all(15)),
         Ink.image(image: AssetImage('assets/loginSignupImage.jpg',),height: 250,width: 250,),
          Text('Welcome', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Colors.red,
          ),),
          Text('Digital makes Banking',
          style: TextStyle(fontSize:15,
              fontWeight: FontWeight.w400,
            color: Colors.red,
          ),

          ),
          Text('Hassle-free and a lot easier for you',
            style: TextStyle(fontSize:15,
              fontWeight: FontWeight.w400,
              color: Colors.red,
            ),

          ),
          const SizedBox(height: 10,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.red,width: 2),
              )
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Text(
              'Login',
              style:

                  TextStyle(color: Colors.red, fontWeight: FontWeight.w800),

            ),
          ),
          const SizedBox(height: 5,),
          Text('OR',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color: Colors.red),),

          ElevatedButton(

            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Adhare()));
            },

            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.red, width: 2),
              )
            ),
            child: Text(
              'Signup',
              style:

                  TextStyle(color: Colors.red, fontWeight: FontWeight.w800,
                    backgroundColor: Colors.white,
                    fontSize: 15,
                  ),

            ),
          ),
        ],
      ),
      ),
    );
  }
}
