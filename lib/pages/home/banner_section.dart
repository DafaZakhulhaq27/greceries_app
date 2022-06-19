import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:groceries_app/theme.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List dataBanner = [1, 2];

    return CarouselSlider(
      options: CarouselOptions(
        height: 158,
        enableInfiniteScroll: false,
      ),
      items: dataBanner.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('$contentPath/banner_$i.png'),
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
