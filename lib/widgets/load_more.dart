import 'package:flutter/material.dart';
import 'package:groceries_app/theme.dart';

class LabelLoadMore extends StatelessWidget {
  final String title;

  const LabelLoadMore({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: heading18Bold.copyWith(
            color: lightFontDark,
          ),
        ),
        Text(
          'See all',
          style: body14Medium.copyWith(
            color: lightColorPrimary,
          ),
        ),
      ],
    );
  }
}
