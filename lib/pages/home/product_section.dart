import 'package:flutter/material.dart';
import 'package:groceries_app/theme.dart';

import '../../widgets/load_more.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> dataCategory = [
      {
        'image': '1',
        'name': 'Bell Pepper Red',
        'weight': 1,
        'price': 4,
        'organic': '80%',
        'exp': '1 year',
        'reviews': '4.8 (256)',
        'cal': 80,
        'desc':
            'Bell peppers (Capsicum annuum) are fruits that belong to the nightshade family. They are related to chili peppers, tomatoes, and breadfruit, all of which are native to Central and South America. Also called sweet peppers or capsicums, bell peppers can be eaten either raw or cooked.'
      },
      {
        'image': '2',
        'name': 'Lamb Meat',
        'weight': 1,
        'price': 45,
        'organic': '80%',
        'exp': '1 year',
        'reviews': '4.8 (256)',
        'cal': 80,
        'desc':
            'Lamb meat is meat produced from sheep that are raised. The term lamb refers to lamb that is not yet one year old, which is the most popular type of lamb'
      },
    ];

    return Container(
      margin: const EdgeInsets.all(24),
      child: Column(
        children: [
          const LabelLoadMore(
            title: 'Best Selling',
          ),
          const SizedBox(
            height: 16,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.from(
                dataCategory.map(
                  (data) => GestureDetector(
                    onTap: () => Navigator.pushNamed(
                      context,
                      '/detail-page',
                      arguments: {
                        'data': data,
                      },
                    ),
                    child: Container(
                      height: 214,
                      margin: const EdgeInsets.only(
                        right: 16,
                      ),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: lightColorLightBG,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Image.asset(
                              '$contentPath/product_${data['image']}.png',
                              width: 112,
                            ),
                          ),
                          const SizedBox(
                            height: 26,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data["name"]!,
                                style: body14Bold.copyWith(
                                  color: lightFontDark,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${data["weight"]!}kg,${data["price"]!}\$',
                                    style: body16Bold.copyWith(
                                      color: lightFontSecondary,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
