import 'package:flutter/material.dart';
import 'package:lanars_test/core/extensions.dart';
import 'package:lanars_test/presentation/resources/text_styles.dart';

void unFocus(BuildContext context) {
  if (FocusScope.of(context).hasFocus) {
    FocusScope.of(context).unfocus();
  }
}

bool isEmalValid(String email) {
  if (email.length < 6 || email.length > 30) {
    return false;
  }

  String pattern =
      r"^[a-zA-Z0-9.!#$%&'*+\\/=?^_`{|}~-]{1,10}@(?:(?!.*--)[a-zA-Z0-9-]{1,10}(?<!-))(?:\.(?:[a-zA-Z0-9-]{2,10})){1,}$";
  RegExp regex = RegExp(pattern);
  return regex.hasMatch(email);
}

bool isPasswordValid(String password) {
  if (password.length < 6 || password.length > 10) {
    return false;
  }
  bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
  bool hasLowercase = password.contains(RegExp(r'[a-z]'));
  bool hasDigit = password.contains(RegExp(r'\d'));

  return hasUppercase && hasLowercase && hasDigit;
}

void showScaffoldSnackBar({
  required BuildContext context,
  required String error,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              error,
              style: TextStyles.bodySmall.apply(
                color: context.colors.onInverseSurface,
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: () {
                ScaffoldMessenger.of(context).clearSnackBars();
              },
              child: Icon(
                Icons.close,
                color: context.colors.onInverseSurface,
              ),
            ),
          ],
        )),
  );
}
