import 'package:flutter/material.dart';
import 'constants/theme.dart';
import 'ui/demo_page.dart';
import 'ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dating App",
      theme: AppThemeData.darkThemeData, //Configurable via constants/theme.dart
      home: const HomePage(title: 'Home Page'), //Swap out with demo page
    );
  }
}


