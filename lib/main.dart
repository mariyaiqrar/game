import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:game/formscreen.dart';
import 'package:game/login.dart';
import 'package:game/otp.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}
