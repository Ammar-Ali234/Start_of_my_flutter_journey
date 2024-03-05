import 'package:flutter/material.dart';
import 'package:my_app/utilities/routes.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>(); // Form key for validation
  String name = '';
  String password = '';

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
              child: Form(
                key: _formKey, // Assigning form key
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Username",
                        labelText: "Enter username",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Username can't be Empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Password",
                        labelText: "Enter password",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password can't be Empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 26.0,
                    ),
                    ElevatedButton(
                      child: const Text("Sign up"),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, navigate to home route
                          Navigator.pushNamed(context, Mereroute.homeroute);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
