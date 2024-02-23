import 'package:flutter/material.dart';
import 'package:my_app/utilities/routes.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 26,
              ),
              const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              Image.asset(
                "assets/images/sign up.png",
                fit: BoxFit.fill,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Username", labelText: "Enter username"),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Password", labelText: "Enter password"),
                    ),
                    const SizedBox(
                      height: 26.0,
                    ),
                    ElevatedButton(
                      child: const Text("Sign up"),
                      onPressed: () {
                        Navigator.pushNamed(context, Mereroute.homeroute);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
