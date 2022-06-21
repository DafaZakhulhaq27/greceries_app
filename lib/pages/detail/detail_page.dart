import 'package:flutter/material.dart';
import 'package:groceries_app/theme.dart';
import 'package:groceries_app/widgets/button_default.dart';
import 'package:groceries_app/widgets/button_rounded.dart';
import 'package:groceries_app/widgets/fixed.dart';
import 'package:groceries_app/widgets/snackbar_alert.dart';

class DetailPage extends StatefulWidget {
  final Map? args;

  const DetailPage({
    Key? key,
    this.args,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int quantity = 1;

  handleChange(String type) {
    if (type == 'plus') {
      setState(() {
        quantity += 1;
      });
    } else {
      setState(() {
        quantity -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Map productDetail = widget.args!['data'];
    Size screenSize = MediaQuery.of(context).size;
    List<Map> descList = [
      {
        'image': '1',
        'value': productDetail['organic'],
        'name': 'Organic',
      },
      {
        'image': '2',
        'value': productDetail['exp'],
        'name': 'Expiration',
      },
      {
        'image': '3',
        'value': productDetail['reviews'],
        'name': 'Reviews',
      },
      {
        'image': '4',
        'value': '${productDetail['weight']} kcal',
        'name': '100 Gram',
      },
    ];

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('$imagePath/bg_detail.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leadingWidth: 36,
          toolbarHeight: 36,
          leading: ButtonRounded(
            onPress: () => Navigator.pop(context),
            bgColor: white,
            icon: Icon(
              Icons.arrow_back_ios,
              color: lightFontDark,
              size: 16,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      '$contentPath/product_${productDetail['image']}.png',
                      width: 249,
                      height: 224,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productDetail["name"],
                            style: heading24Bold,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            '${productDetail["weight"]!}kg,${productDetail["price"]!}\$',
                            style: body16Bold.copyWith(
                              color: lightFontSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        ButtonRounded(
                          onPress: () => handleChange('min'),
                          bgColor: lightColorPrimary,
                          isDisabled: quantity <= 1,
                          icon: Icon(
                            Icons.remove_rounded,
                            color: white,
                            size: 16,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          '$quantity',
                          style: heading18Bold,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        ButtonRounded(
                          onPress: () => handleChange('plus'),
                          bgColor: lightColorPrimary,
                          icon: Icon(
                            Icons.add,
                            color: white,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  productDetail["desc"],
                  style: body16Medium.copyWith(
                    color: lightFontGrey,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 240,
                  child: GridView.builder(
                    gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                      crossAxisSpacing: 16,
                      crossAxisCount: screenSize.width < 390 ? 1 : 2,
                      height: 120,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: descList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: lightColorStroke,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              '$imagePath/desc_${index + 1}.png',
                              width: 35,
                              height: 35,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${descList[index]['value']} ',
                                  style: body16Bold.copyWith(
                                    color: lightColorPrimary,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  descList[index]['name'],
                                  style: body14Medium.copyWith(
                                    color: lightFontGrey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: ButtonDefault(
          bgColor: lightFontDark,
          textColor: white,
          textButton: 'Add to cart',
          onPress: () {
            final snackBar = snackBarAlert('Berhasil Menambahkan Ke Cart');
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        ),
      ),
    );
  }
}
