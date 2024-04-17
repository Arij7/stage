import 'package:flutter/material.dart';
import 'package:login_page/auth/login_or_register.dart';
import 'package:login_page/pages/WelcomeScreen.dart';
import 'package:login_page/pages/assignment_screen.dart';
import 'package:login_page/pages/datesheet_screen.dart';
import 'package:login_page/pages/fee_screen.dart';
import 'package:login_page/pages/home_page.dart';
import 'package:login_page/pages/login_page.dart';
import 'package:login_page/pages/registre_page.dart';
import 'package:http/http.dart' as http;
import 'package:login_page/pages/welcomequiz.dart';
import 'dart:convert';

import 'package:sizer/sizer.dart'; // for json decoding

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
        builder: (context,constraint) {
          SizerUtil.width = constraint.maxWidth;
          SizerUtil.height = constraint.maxHeight;
          SizerUtil.deviceType=DeviceType.web ;

          return WelcomeScreen();
        }
      ),
    );
  }
}
