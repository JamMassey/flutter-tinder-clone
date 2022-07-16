// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:flutter_dating/ui/home_page.dart' as _i3;
import 'package:flutter_dating/ui/login/login_screen.dart' as _i1;
import 'package:flutter_dating/ui/login/signup_screen.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    LoginScreenRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.LoginScreen());
    },
    SignUpScreenRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: _i2.SignUpScreen());
    },
    HomePageRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: _i3.HomePage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig('/#redirect',
            path: '/', redirectTo: '/login', fullMatch: true),
        _i4.RouteConfig(LoginScreenRoute.name, path: '/login', children: [
          _i4.RouteConfig('*#redirect',
              path: '*',
              parent: LoginScreenRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i4.RouteConfig(SignUpScreenRoute.name, path: '/signup', children: [
          _i4.RouteConfig('*#redirect',
              path: '*',
              parent: SignUpScreenRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i4.RouteConfig(HomePageRoute.name, path: '/home', children: [
          _i4.RouteConfig('*#redirect',
              path: '*',
              parent: HomePageRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i4.RouteConfig('*#redirect',
            path: '*', redirectTo: '/login', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.LoginScreen]
class LoginScreenRoute extends _i4.PageRouteInfo<void> {
  const LoginScreenRoute({List<_i4.PageRouteInfo>? children})
      : super(LoginScreenRoute.name, path: '/login', initialChildren: children);

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i2.SignUpScreen]
class SignUpScreenRoute extends _i4.PageRouteInfo<void> {
  const SignUpScreenRoute({List<_i4.PageRouteInfo>? children})
      : super(SignUpScreenRoute.name,
            path: '/signup', initialChildren: children);

  static const String name = 'SignUpScreenRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomePageRoute extends _i4.PageRouteInfo<void> {
  const HomePageRoute({List<_i4.PageRouteInfo>? children})
      : super(HomePageRoute.name, path: '/home', initialChildren: children);

  static const String name = 'HomePageRoute';
}
