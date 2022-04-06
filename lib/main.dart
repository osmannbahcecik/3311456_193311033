import 'package:flutter/material.dart';
import 'package:qcoffee/screens/homePage.dart';
import 'package:qcoffee/utilities/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KahVe',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
      routes: Routes.routes,
    );
  }
}
