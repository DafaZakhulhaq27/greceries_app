import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:groceries_app/pages/home/product_section.dart';
import 'package:groceries_app/pages/home/profile_section.dart';
import 'package:groceries_app/theme.dart';

import 'banner_section.dart';
import 'category_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('$imagePath/bg_home.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                ProfileSection(),
                BannerSection(),
                CategorySection(),
                ProductSection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
