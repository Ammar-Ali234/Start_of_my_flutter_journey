import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const String a =
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Flag_of_Pakistan.svg/1200px-Flag_of_Pakistan.svg.png";
    return Drawer(
      child: Container(
          padding: EdgeInsets.zero,
          color: Colors.red,
          child: ListView(
            children: const [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    accountName: Text(
                      "Ammar Ali",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    accountEmail: Text(
                      "alimammar16@gmail.com",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    currentAccountPicture:
                        CircleAvatar(backgroundImage: NetworkImage(a)),
                  )),
              ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  textScaleFactor: 1.3,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.3,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.collections,
                  color: Colors.white,
                ),
                title: Text(
                  "Collections",
                  textScaleFactor: 1.3,
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )),
    );
  }
}
