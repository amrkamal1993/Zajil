import 'package:flutter/material.dart';
import 'package:zajil/constants/app_constants.dart';
import 'package:zajil/constants/colors.dart';

class AppDropDownWidget<T> extends StatelessWidget {
  final String labelText;
  final List<DropdownMenuItem<T>> items;
  final void Function(T?) onChanged;
  final IconData prefixIcon;

  const AppDropDownWidget({
    Key? key,
    required this.labelText,
    required this.items,
    required this.onChanged,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      decoration: InputDecoration(
        labelText: labelText, labelStyle: const TextStyle(
        color: AppColors.text,
        fontSize: 16,
        fontFamily: AppConstants.appLightFontFamily,
        fontWeight: FontWeight.bold,
      ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
              8), // Set the desired border radius
        ),
        prefixIcon: Icon(
          prefixIcon,
        ), // Set the desired prefix icon
      ),
      items: items,
      onChanged: onChanged,
    );
  }
}
