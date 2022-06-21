import 'package:flutter/material.dart';
import 'package:groceries_app/theme.dart';
import 'package:groceries_app/widgets/snackbar_alert.dart';

class LabelLoadMore extends StatelessWidget {
  final String title;

  const LabelLoadMore({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: screenSize.width > 390 ? 390 : double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: heading18Bold.copyWith(
              color: lightFontDark,
            ),
          ),
          GestureDetector(
            onTap: () {
              final snackBar = snackBarAlert('Coming Soon');
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text(
              'See all',
              style: body14Medium.copyWith(
                color: lightColorPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
