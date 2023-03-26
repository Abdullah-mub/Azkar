// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intro_flutter/Night.dart';
import 'package:intro_flutter/main_page.dart';
import 'package:intro_flutter/menu.dart';
import 'package:intro_flutter/morning.dart';
import 'package:intro_flutter/prayers.dart';
import 'package:intro_flutter/test.dart';

import 'tasks_page.dart';

void main() {
  runApp(const MyApp());
}
//##################################################################

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainPage());
  }
}
