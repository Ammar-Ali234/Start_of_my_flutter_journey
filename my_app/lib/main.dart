import 'package:flutter/material.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/pages/signup_page.dart';
import 'package:my_app/utilities/routes.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,

      theme: ThemeData(
          primaryTextTheme: GoogleFonts.latoTextTheme(),
          primarySwatch: Colors
              .red), //primaryswatch automatically her color se hisaab se text etc ko correct kr deta h
      routes: {
        "/": (context) =>
            Signup(), //default me ye "/" leta hai agar ye de dia hai to uper home k widget ki zaroort nahi hai
        Mereroute.homeroute: (context) => const HomePage(),
        Mereroute.loginroute: (context) => Login_page()
      },
    );
  }
}
