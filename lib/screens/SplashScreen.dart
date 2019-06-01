import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(Duration(seconds: 3), () {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white , Colors.blueAccent],
              begin: Alignment.bottomRight,
              end: Alignment.center)
      ),
      child: Center(
        child: Logo(),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
        width: 100,
        child: Placeholder()
    );
  }
}
