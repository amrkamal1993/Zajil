import 'package:flutter/material.dart';
import 'package:zajil/constants/app_constants.dart';

class AppText extends StatelessWidget {
  const AppText(
      {Key? key,
      required this.text,
      required this.textColor,
      required this.fontSize})
      : super(key: key);

  final String text;
  final Color textColor;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontFamily: AppConstants.appLightFontFamily,
      ),
    );
  }
}
