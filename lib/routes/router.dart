import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dating/bloc/theme_bloc.dart';
import 'package:flutter_dating/ui/login/login_screen.dart';
import 'package:flutter_dating/ui/login/signup_screen.dart';


@MaterialAutoRouter(
  routes: <AutoRoute>[

    MaterialRoute(page: LoginScreen),
    MaterialRoute(page: SignUpScreen),


  ],
)
class $AppRouter {}

class ScreenArguments {
  final ThemeBloc themeBloc;
  ScreenArguments({required this.themeBloc});
}
