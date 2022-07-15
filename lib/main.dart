import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'routes/router.gr.dart';
import 'bloc/theme_bloc.dart';

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
  late ThemeBloc _themeBloc;

  @override
  void initState() {
    super.initState();
    _themeBloc = ThemeBloc();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ThemeData>(
      initialData: _themeBloc.initialTheme().data,
      stream: _themeBloc.themeDataStream,
      builder: (BuildContext context, AsyncSnapshot<ThemeData> snapshot) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: snapshot.data,
          darkTheme: null,
          builder: ExtendedNavigator<AppRouter>(
            router: AppRouter(),
            initialRoute: Routes.loginScreen,
            initialRouteArgs: LoginScreenArguments(themeBloc: _themeBloc),
//            initialRoute: Routes.loginScreen1,
          ),
        );
      },
    );
  }
}
