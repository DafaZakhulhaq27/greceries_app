import 'dart:async';

import 'package:flutter/material.dart';
import 'package:groceries_app/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  checkOpenApp() async {
    Navigator.pushReplacementNamed(context, '/welcome-page');
  }

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => checkOpenApp(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColorPrimary,
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(
            top: 26,
            bottom: 27,
            left: 18,
            right: 24,
          ),
          decoration: BoxDecoration(
              color: white, borderRadius: BorderRadius.circular(55)),
          child: Image.asset(
            '$imagePath/logo.png',
            width: 67,
            height: 55,
          ),
        ),
      ),
    );
  }
}
