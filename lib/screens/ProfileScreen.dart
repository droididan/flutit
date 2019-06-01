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
            Text("Flutter Programmer", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),)
          ],)

    );
  }
}
