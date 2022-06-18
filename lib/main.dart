import 'package:flutter/material.dart';
import 'package:groceries_app/app_route.dart';
import 'package:groceries_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greceries App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: white,
      ),
      initialRoute: '/',
      onGenerateRoute: AppRoute().onGenerateRoute,
    );
  }
}
