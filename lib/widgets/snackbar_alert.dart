import 'package:flutter/material.dart';
import 'package:groceries_app/theme.dart';

SnackBar snackBarAlert(
  String message,
) {
  return SnackBar(
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    backgroundColor: lightColorPrimary,
    content: Row(
      children: [
        Expanded(
          child: Text(
            message,
            style: body14Bold.copyWith(
              color: white,
            ),
          ),
        )
      ],
    ),
  );
}
