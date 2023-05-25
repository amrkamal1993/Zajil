import 'package:flutter/material.dart';
import 'package:zajil/constants/app_constants.dart';
import 'package:zajil/constants/colors.dart';

class AppTextField extends StatelessWidget {
  final Function(String)? onTextChanged;
  final double? fontSize;

  const AppTextField({
    Key? key,
    this.onTextChanged,
    this.fontSize,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
      return Container(
        margin: const EdgeInsets.only(right: 20, left: 20, top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextFormField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            fontSize: fontSize ?? 16,
            fontWeight: FontWeight.normal,
            fontFamily: AppConstants.appLightFontFamily,
            color: AppColors.text,
          ),
          onChanged: onTextChanged,
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 0.0),
          ),
        ),
      );
  }
}
