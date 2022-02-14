import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

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
              "otp with Your Mobile Number",
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
                  //padding: EdgeInsets.only(left: 10),
                  // margin: EdgeInsets.only(left: 20, right: 20),
                  child: PinEntryTextField(
                    showFieldAsBox: true,
                    fields: 6,
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
