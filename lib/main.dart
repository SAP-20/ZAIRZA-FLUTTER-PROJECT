import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:skill_care/Cart.dart';
import 'package:skill_care/First%20Page.dart';
import 'package:skill_care/Grid%20View.dart';
import 'package:skill_care/ListView.dart';
import 'package:skill_care/Login.dart';
import 'package:skill_care/Profile.dart';
import 'package:skill_care/Registration_Screen.dart';
import 'package:skill_care/description.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
      routes: {
        "SecondPage": (context) => gridview(),
        "ThirdPage": (context) => HomePage(),
        "FourthPage": (context) => cart(),
        "FifthPage": (context) => Cart(),
        "SixthPage": (context) => Profile(),
        "SeventhPage": (context) => LoginPage(),
        "EigthPage": (context) => RegisterPage(),
      },
    );
  }
}

