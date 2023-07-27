import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:multi_user_authentication/pages/adminpage.dart';
import 'package:multi_user_authentication/pages/homepage.dart';
import 'package:multi_user_authentication/pages/loginpage.dart';
import 'package:multi_user_authentication/pages/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const SplashScreenPage(),
      'loginpage': (context) => const LoginPage(),
      'homepage': (context) => const Homepage(),
      'adminPage': (context) => const AdminPage(),
    },
  ));
}
