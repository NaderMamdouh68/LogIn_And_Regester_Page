import 'package:flutter/material.dart';
import 'package:login_and_regester_page/LogIn.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "ubuntu",
        primaryColor: Colors.red,
      ),
      home: const LoginPage(),
    );
  }
}


class MainColor {
  static const mainColor1 = Color(0xffD9802E);
  static const mainColor2 = Color(0xff191919);
  static const mainColor3 = Color(0xff272727);
  static const mainColor33 = Color.fromARGB(255, 72, 72, 72);
  static const blackColor = Colors.black;
  static const whiteColor = Colors.white;
}

// class MainStyleTxt {
//   static const mainfont = TextStyle();
// }