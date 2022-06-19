import 'package:flutter/material.dart';
import 'package:groceries_app/theme.dart';

class ButtonRounded extends StatelessWidget {
  final Color? bgColor;
  final Function? onPress;
  final bool isDisabled;
  final Widget? icon;

  const ButtonRounded({
    Key? key,
    this.bgColor,
    this.onPress,
    this.isDisabled = false,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      width: 36,
      child: TextButton(
        onPressed: isDisabled ? null : () => onPress!(),
        style: TextButton.styleFrom(
          backgroundColor: isDisabled ? lightFontGrey : bgColor!,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: icon!,
      ),
    );
  }
}
