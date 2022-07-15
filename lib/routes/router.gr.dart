

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../bloc/theme_bloc.dart';
import '../ui/login/login_screen.dart';
import '../ui/login/signup_screen.dart';

class Routes {
  static const String loginScreen = '/login-screen';
  static const String signUpScreen = '/sign-up-screen';

  static const all = <String>{
    loginScreen,
    signUpScreen,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.signUpScreen, page: SignUpScreen),
    RouteDef(Routes.loginScreen, page: LoginScreen)
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    LoginScreen: (data) {
      final args = data.getArgs<LoginScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen(themeBloc: args.themeBloc),
        settings: data,
      );
    },
    SignUpScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpScreen(),
        settings: data,
      );
    },
  };
}

/// LoginScreen arguments holder class
class LoginScreenArguments {
  final ThemeBloc themeBloc;
  LoginScreenArguments({required this.themeBloc});
}

/// LoginScreen arguments holder class
class SignUpScreenArguments {
  final ThemeBloc themeBloc;
  SignUpScreenArguments({required this.themeBloc});
}


