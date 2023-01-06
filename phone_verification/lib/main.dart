import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:phone/login.dart';
import 'package:phone/signin.dart';
import 'package:phone/phone.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    initialRoute: 'phone',
    debugShowCheckedModeBanner: false,
    routes: {
      'phone': (context) => const SignIn(),
      'verify': (context) => const Phone(),
      'home': (context) => const Login()
    },
  ));
}
