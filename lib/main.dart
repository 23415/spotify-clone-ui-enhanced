import 'package:flutter/material.dart';
import 'package:music_app/screens/login_page.dart';
import 'package:music_app/screens/otp_page.dart';
import 'package:music_app/screens/phone_login_page.dart';
import 'package:music_app/screens/song_detail_screen.dart';

import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
    );
  }
}