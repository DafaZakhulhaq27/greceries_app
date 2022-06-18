import 'package:flutter/material.dart';
import 'package:groceries_app/pages/detail/detail_page.dart';
import 'package:groceries_app/pages/home/home_page.dart';
import 'package:groceries_app/pages/splash/splash_page.dart';
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
      case '/detail-page':
        return rightleftRoute(
          const DetailPage(),
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
