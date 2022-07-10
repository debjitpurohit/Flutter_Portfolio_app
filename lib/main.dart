
import 'package:flutter_portfolio/about.dart';
import 'package:flutter_portfolio/home.dart';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/home.dart';
import 'package:flutter_portfolio/project.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => MyHome(),
        'about':(context) => MyAbout(),
        'project':(context) => MyProject(),
      }));
}
