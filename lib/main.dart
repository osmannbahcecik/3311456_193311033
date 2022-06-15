import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:qcoffee/screens/loginPage.dart';
import 'package:qcoffee/utilities/routes.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
      routes: Routes.routes,
    );
  }
}
