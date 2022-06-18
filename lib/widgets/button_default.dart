import 'package:flutter/material.dart';
import 'package:groceries_app/theme.dart';

class ButtonDefault extends StatelessWidget {
  final String? textButton;
  final Color? textColor;
  final Color? bgColor;
  final Function? onPress;
  final bool isDisabled;
  final bool rounded;
  final String? icon;

  const ButtonDefault(
      {Key? key,
      this.textButton,
      this.textColor,
      this.bgColor,
      this.onPress,
      this.isDisabled = false,
      this.rounded = false,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 53,
      width: double.infinity,
      child: TextButton(
        onPressed: isDisabled ? null : () => onPress!(),
        style: TextButton.styleFrom(
          backgroundColor: isDisabled ? lightFontGrey : bgColor!,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Text(
          textButton!,
          style: body16Bold.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
