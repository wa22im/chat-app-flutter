import 'package:flutter/material.dart';
import 'package:whatsApp_clone_flutter/config/config.dart';
import 'screens/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: primaryColor,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: primaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
