import 'dart:developer';
import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:game/otp.dart';

class Loginscreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController mobCtrl = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width - 40;
    return Scaffold(
        body: Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          SizedBox(height: 30),
          Image.asset(
            "assets/images/key.png",
            height: 220,
            width: 220,
          ),
          SizedBox(height: 30),
          Center(
            child: Text(
              "Login with Your Mobile Number",
              style: TextStyle(color: Colors.blue, fontSize: 20.0),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 8.0,
                    offset: Offset(5, 5),
                  ),
                ]),
            child: Column(
              children: [
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                    controller: mobCtrl,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        border: InputBorder.none, prefix: Text("+91")),
                  ),
                ),
                SizedBox(height: 40),
                GestureDetector(
                  onTap: () {
                    log("clcked");
                    sendOtp();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Continue",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }

  void sendOtp() {
    auth.verifyPhoneNumber(
        phoneNumber: "+91" + mobCtrl.text,
        verificationCompleted: (auth) {},
        verificationFailed: (e) {},
        codeSent: (String verificationid, int? token) {
          log("otp sent.");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => OtpScreen()));
        },
        codeAutoRetrievalTimeout: (time) {});
  }
}
