import 'package:flutter/material.dart';
import 'constants/theme.dart';
import 'widgets/increment_counter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemeData.darkThemeData, //Configurable via theme
      home: const IncrementCounter(title: 'Flutter Demo Home Page'),
    );
  }
}


