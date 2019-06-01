import 'package:flut_it/screens/ComposeScreen.dart';
import 'package:flut_it/screens/FeedScreen.dart';
import 'package:flut_it/screens/ProfileScreen.dart';
import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int _currentIndex = 0;
  final list = [
    FeedScreen(),
    ProfileScreen()
  ];

  onTapBar(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutit'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: Colors.redAccent,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ComposeScreen()),
            );
          },
          child: Text('+', style: TextStyle(color: Colors.white),),
        ),
      ),
      body: list[_currentIndex],
      bottomNavigationBar:
          BottomNavigationBar(onTap: onTapBar, currentIndex: 1, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.person), title: Text('Profile')),
        BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('Feed'))
      ]),
    );
  }
}
