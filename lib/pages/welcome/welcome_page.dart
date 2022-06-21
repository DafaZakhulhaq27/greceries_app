import 'package:flutter/material.dart';
import 'package:groceries_app/theme.dart';
import 'package:groceries_app/widgets/button_default.dart';
import 'package:groceries_app/widgets/logo.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(36),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('$imagePath/bg_welcome.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 70,
              ),
              const Logo(
                type: 'small',
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Get your groceries delivered to your home',
                style: heading28Bold.copyWith(
                  color: lightFontDark,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'The best delivery app in town for delivering your daily fresh groceries',
                style: body16Medium.copyWith(
                  color: lightFontGrey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                width: double.infinity,
              ),
              SizedBox(
                width: screenSize.width > 390 ? 390 : double.infinity,
                child: ButtonDefault(
                  bgColor: lightColorPrimary,
                  textColor: white,
                  textButton: 'Shop now',
                  onPress: () => Navigator.pushNamed(context, '/home-page'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
