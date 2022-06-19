import 'package:flutter/material.dart';
import 'package:groceries_app/theme.dart';
import 'package:groceries_app/widgets/snackbar_alert.dart';

import '../../widgets/load_more.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> dataCategory = [
      {
        'image': '1',
        'name': 'Fruits',
      },
      {
        'image': '2',
        'name': 'Vegetables',
      },
      {
        'image': '3',
        'name': 'Diary',
      },
      {
        'image': '4',
        'name': 'Meat',
      },
    ];

    return Container(
      margin: const EdgeInsets.all(24),
      child: Column(
        children: [
          const LabelLoadMore(
            title: 'Category',
          ),
          const SizedBox(
            height: 16,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.from(
                dataCategory.map(
                  (data) => categoryItem(data, context),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  GestureDetector categoryItem(Map<String, String> data, BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = snackBarAlert('Coming Soon');
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
        margin: const EdgeInsets.only(
          right: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(19),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: lightColorLightBG,
              ),
              child: Image.asset(
                '$contentPath/category_${data["image"]}.png',
                width: 35,
                height: 35,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              data["name"]!,
              style: body14Medium.copyWith(
                color: lightFontDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
