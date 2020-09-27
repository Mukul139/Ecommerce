import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/widgets.dart';

import '../features/home/presentation/pages/home_page.dart';
import '../features/login/presentation/pages/login.dart';
import '../splash/spash.dart';


@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(
      page: SignInPage,
    ),
    CustomRoute<bool>(
        page: HomePage,
        durationInMilliseconds: 500,
        transitionsBuilder:   coustomTransition)
      
  ],
)
class $Router {}

Widget coustomTransition(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
     return ScaleTransition(scale: animation, child: child);
  }