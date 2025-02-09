
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homescreen.dart';

class SplashScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/splash_bg.png",
            fit: BoxFit.cover,
          ),
          Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Fall in Love with \n Coffe in Blissful \n Delight",

                  style: TextStyle( color: Colors.white,fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,

                ),

                const Text(
                  "Welcome to our cozy coffee corner,"
                      " where \nevery cup is a delightful for you.",

                  style: TextStyle( color: Colors.white,
                  fontSize: 16
                  ),
                  textAlign: TextAlign.center,

                ),
                Container(

                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                    child: ElevatedButton
                      (
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFA16642),
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),                        ),
                      ),


                      onPressed: (){
                        Navigator.pushReplacement(
                                 context,
                                 MaterialPageRoute(builder: (context) => HomeScreen()),
                               );
                             },

                      child: const Center(
                        child: Text('Get Started',
                          style: TextStyle(color: Colors.white,fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                ),
              ],

            ),
          ),
        ],
      ),
    );
  }
}
