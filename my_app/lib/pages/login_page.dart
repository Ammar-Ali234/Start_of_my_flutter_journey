import 'package:flutter/material.dart';
import 'package:my_app/utilities/routes.dart';

class Login_page extends StatefulWidget {
  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  String name = "";
  bool change = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
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
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Username",
                        labelText: "Enter username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 13.0,
                    ),
                    TextFormField(
                      obscureText:
                          true, //obscuretext text ko dikhney se rokey ga
                      decoration: const InputDecoration(
                          hintText: "Password", labelText: "Enter password"),
                    ),
                    const SizedBox(
                      height: 26.0,
                    ),
                    InkWell(
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
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
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.circular(change ? 50 : 8)),
                        height: 50,
                        width: change ? 50 : 100,
                        alignment: Alignment.center,
                      ),
                      onTap: () async {
                        setState(() {
                          change = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, Mereroute.homeroute);
                      },
                    ),
                    const SizedBox(
                      height: 26.0,
                    ),
                    const Text("Sign up")
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
