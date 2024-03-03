import 'package:flutter/material.dart';
import 'package:my_app/utilities/routes.dart';

class Login_page extends StatefulWidget {
  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  String name = "";
  String password = ""; // Added password variable
  bool change = false;

  final _formkey = GlobalKey<FormState>();
  final _passwordController =
      TextEditingController(); // Added TextEditingController

  void nextmove(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      // Check if form is valid
      setState(() {
        change = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, Mereroute.homeroute);
      setState(() {
        change = false;
      });
    }
  }

  @override
  void dispose() {
    _passwordController.dispose(); // Dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/img.png",
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 26.0,
                ),
                Text(
                  "Welcome $name ",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 22),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Username",
                          labelText: "Enter username",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Username can't be empty";
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
                        height: 13.0,
                      ),
                      TextFormField(
                        controller: _passwordController, // Set the controller
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Password", labelText: "Enter password"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password can't be empty";
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
                      Material(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(change ? 50 : 8),
                        child: InkWell(
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            child: change
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                            height: 50,
                            width: change ? 50 : 100,
                            alignment: Alignment.center,
                          ),
                          onTap: () => nextmove(context),
                        ),
                      ),
                      const SizedBox(
                        height: 26.0,
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, Mereroute.signuproute);
                            },
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
