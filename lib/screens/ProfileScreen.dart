import 'package:flut_it/db/users.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Column(children: <Widget>[
            SizedBox(height: 90),
            CircleAvatar(
              radius: 130,
              backgroundColor: Colors.greenAccent,
              child: Image.asset("lib/assets/images/profile.png"),
            ),
            Text(UsersDB.currentUser.name != "" ? UsersDB.currentUser.name : "Flutter Programmer", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),)
          ],)

    );
  }
}
