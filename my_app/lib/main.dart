import 'package:flutter/material.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/login_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors
              .red), //primaryswatch automatically her color se hisaab se text etc ko correct kr deta h
      routes: {
        "/": (context) =>
            HomePage(), //default me ye "/" leta hai agar ye de dia hai to uper home k widget ki zaroort nahi hai
        '/Login_page': (context) => Login_page()
      },
    );
  }
}
