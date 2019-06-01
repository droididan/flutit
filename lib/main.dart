import 'package:flut_it/screens/ComposeScreen.dart';
import 'package:flut_it/screens/FeedScreen.dart';
import 'package:flut_it/screens/MainScreen.dart';
import 'package:flut_it/screens/ProfileScreen.dart';
import 'package:flut_it/screens/SplashScreen.dart';
import 'package:flut_it/screens/WizardScreen.dart';
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      title: 'Flutit',
      home: SplashScreen(),
      routes: {
        '/main': (context) => Main(),
        '/wizard': (context) => WizardScreen(),
        '/profile': (context) => ProfileScreen(),
        '/splash': (context) => SplashScreen(),
        '/feed': (context) => FeedScreen(),
        '/compose': (context) => ComposeScreen()
      },
    ));
