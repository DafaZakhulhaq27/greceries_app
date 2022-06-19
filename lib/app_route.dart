import 'package:flutter/material.dart';
import 'package:groceries_app/pages/detail/detail_page.dart';
import 'package:groceries_app/pages/home/home_page.dart';
import 'package:groceries_app/pages/splash/splash_page.dart';
import 'package:groceries_app/pages/welcome/welcome_page.dart';
import 'package:groceries_app/widgets/animation.dart';

class AppRoute {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return rightleftRoute(
          const SplashPage(),
          routeSettings,
        );
      case '/home-page':
        return rightleftRoute(
          const HomePage(),
          routeSettings,
        );
      case '/welcome-page':
        return rightleftRoute(
          const WelcomePage(),
          routeSettings,
        );
      case '/detail-page':
        final args = routeSettings.arguments as Map;

        return rightleftRoute(
          DetailPage(
            args: args,
          ),
          routeSettings,
        );
      default:
        return rightleftRoute(
          const HomePage(),
          routeSettings,
        );
    }
  }
}
