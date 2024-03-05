import "package:flutter/material.dart";
import "package:my_app/widgets/drawer.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int de = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
          child: Container(
        child: Text("hello! $de  from my app"),
      )),
      drawer: MyDrawer(),
    );
  }
}
