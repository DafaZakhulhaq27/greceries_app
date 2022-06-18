import 'dart:async';

import 'package:flutter/material.dart';
import 'package:groceries_app/theme.dart';
import 'package:groceries_app/widgets/logo.dart';

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
      body: const Center(
        child: Logo(),
      ),
    );
  }
}
