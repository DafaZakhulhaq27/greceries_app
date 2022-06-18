import 'package:flutter/material.dart';
import 'package:groceries_app/theme.dart';

class Logo extends StatelessWidget {
  final Color? background;
  final String? type;

  const Logo({
    Key? key,
    this.background = Colors.white,
    this.type = 'medium',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: type == "medium" ? 26 : 16,
        bottom: type == "medium" ? 27 : 16,
        left: type == "medium" ? 18 : 11,
        right: type == "medium" ? 24 : 14,
      ),
      decoration:
          BoxDecoration(color: white, borderRadius: BorderRadius.circular(55)),
      child: Image.asset(
        '$imagePath/logo.png',
        width: 67,
        height: 55,
      ),
    );
  }
}
