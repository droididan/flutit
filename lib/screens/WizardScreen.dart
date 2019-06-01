import 'package:flut_it/db/users.dart';
import 'package:flut_it/models/user.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class WizardScreen extends StatefulWidget {
  @override
  _WizardScreenState createState() => _WizardScreenState();
}

class _WizardScreenState extends State<WizardScreen> {

  String username = "";
  String selectedSkill = "Beginner";

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 250.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your name",
                    icon: Icon(Icons.person),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Flutter level: ', style: TextStyle(fontWeight: FontWeight.bold),),
                      DropdownButton<String>(
                    value: selectedSkill,
                    onChanged: (String newValue) {
                      setState(() {
                        selectedSkill = newValue;
                      });
                    },
                    items: <String>['Beginner', 'Intermediate', 'Expert']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )
                  ]
                ),
                RaisedButton(
                  onPressed: _getInClicked(context),
                  color: Colors.blue,
                  child: Text(
                      'Get in!',
                      style: TextStyle(fontSize: 20, color: Colors.white)
                  ),
                )
              ],
            )
          ),
        )
    );
  }

  _getInClicked(BuildContext context)  {
    int id = Users.getCurrentUserCount()+1;
    User user = User(id.toString(), username, selectedSkill);
    Users.setCurrentUser(user);
//    Navigator.push(context, Route('/feed'));
  }

}

