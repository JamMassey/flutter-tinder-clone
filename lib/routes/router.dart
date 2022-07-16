import 'package:auto_route/auto_route.dart';
import 'package:flutter_dating/ui/login/login_screen.dart';
import 'package:flutter_dating/ui/login/signup_screen.dart';
import 'package:flutter_dating/ui/home_page.dart';

//Use 'flutter packages pub run build_runner' watch to generate route.gr.dart file


@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    //authentification routes
    AutoRoute(
      initial: true,
      path: '/login',
      page: LoginScreen,
      children: [
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(
      path: '/signup',
      page: SignUpScreen,
      children: [
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(
      path: '/home',
      page: HomePage,
      children: [
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    //user routes with a nested router
    // AutoRoute(
    //   path: '/user',
    //   page: UserScreen,
    //   children: [
    //     AutoRoute(path: '', page: UserProfileScreen),
    //     AutoRoute(path: 'details', page: UserDetailsScreen),
    //     AutoRoute(path: 'friends', page: UserFriendsScreen),
    //     groupTabRouter,
    //     // redirect all other paths
    //     RedirectRoute(path: '*', redirectTo: 'profile'),
    //   ],
    // ),

    // redirect all other paths
    RedirectRoute(path: '*', redirectTo: '/login'),
    //Home
  ],
)

class $AppRouter {}

//nested group route with a tab router
// const groupTabRouter = AutoRoute(
//   path: 'group/:id',
//   page: GroupScreen,
//   children: [
//     AutoRoute(
//       path: 'tab1',
//       name: 'GroupTab1Router',
//       page: EmptyRouterPage,
//       children: [
//         AutoRoute(path: '', page: Tab1Screen),
//         RedirectRoute(path: '*', redirectTo: ''),
//       ],
//     ),
//     AutoRoute(
//       path: 'tab2',
//       name: 'GroupTab2Router',
//       page: EmptyRouterPage,
//       children: [
//         AutoRoute(path: '', page: Tab2Screen),
//         RedirectRoute(path: '*', redirectTo: ''),
//       ],
//     ),
//     AutoRoute(
//       path: 'tab3',
//       name: 'GroupTab3Router',
//       page: EmptyRouterPage,
//       children: [
//         AutoRoute(path: '', page: Tab3Screen),
//         RedirectRoute(path: '*', redirectTo: ''),
//       ],
//     ),
//   ],
// );








