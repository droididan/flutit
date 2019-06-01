import 'package:flutter/material.dart';
import 'dart:async';

class WizardScreen extends StatefulWidget {
  @override
  _WizardScreenState createState() => _WizardScreenState();
}

class _WizardScreenState extends State<WizardScreen> {

  String selectedSkill = "Beginner";

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 250.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your name",
                    icon: Icon(Icons.person),
                  ),
                ),
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
              ],
            )
          ),
        )
    );
  }
}
