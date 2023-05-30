import 'package:flutter/material.dart';
import 'package:zajil/constants/colors.dart';

class RequestTitleWidget extends StatelessWidget {
  const RequestTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Milk Run Request',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.primary),
          ),
          Text(
            '02 March 23',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.disabled),
          ),
        ],
      ),
    );
  }
}
