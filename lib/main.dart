import 'package:flutter/material.dart';
import 'package:flutter_dating/routes/router.gr.dart';
import 'package:flutter_dating/themes/login_theme.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Navigation Tutorial',
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      theme: LoginDesignTheme.lightThemeData,
      builder: (context, router) => router!,
    );
  }
}
