import 'package:flutter/material.dart';
import 'login_page.dart';
import 'homepage.dart';
import 'SIForm.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Coding cafe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily:'Nunito',

      ),
      home: SIForm(),
      routes: routes,
    );

  }
}