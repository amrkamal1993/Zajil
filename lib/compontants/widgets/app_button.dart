import 'package:flutter/material.dart';
import 'package:zajil/compontants/widgets/app_text.dart';
import 'package:zajil/constants/app_constants.dart';
import 'package:zajil/constants/colors.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onClick;
  final String text;
  final ButtonState state;

  const AppButton({
    Key? key,
    required this.onClick,
    required this.text,
    this.state = ButtonState.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isLoading = state == ButtonState.loading;
    bool isDisabled = state == ButtonState.disabled;

    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(vertical: 10),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: AppConstants.appLightFontFamily,
            color: isDisabled ? Colors.white : AppColors.text,
          ),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          isDisabled ? AppColors.disabled : AppColors.text,
        ),
      ),
      onPressed: isDisabled ? null : onClick,
      child: isLoading
          ? const SizedBox(
              width: 30,
              height: 30,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            )
          : AppText(
              text: text,
              fontSize: 16,
              textColor: Colors.white),
    );
  }
}

enum ButtonState {
  enabled,
  loading,
  disabled,
}
