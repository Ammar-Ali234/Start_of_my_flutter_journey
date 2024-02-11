import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My first app"),
      ),
      body: Center(
          child: Container(
        child: Text("hello!"),
      )),
      drawer: Drawer(),
    );
  }
}
