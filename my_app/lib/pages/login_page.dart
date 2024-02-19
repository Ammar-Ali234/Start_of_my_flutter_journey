import 'package:flutter/material.dart';

class Login_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/img.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 26.0,
            ),
            Text(
              "Welcome to the Login page",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Username",
                      labelText: "Enter username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true, //obscuretext text ko dikhney se rokey ga
                    decoration: InputDecoration(
                        hintText: "Password", labelText: "Enter password"),
                  ),
                  SizedBox(
                    height: 26.0,
                  ),
                  ElevatedButton(
                    child: Text("Log in"),
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      print("Log in Successful");
                    },
                  )
                ],
              ),
            )
          ],
        ));
  }
}
