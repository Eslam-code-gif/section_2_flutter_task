import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/fonts.dart';
class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    super.key,
    required this.title,
    this.onPressed,
    required this.right,
    required this.left
  });
  final String title;
  final void Function()? onPressed;
  final double right;
  final double left;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48.01129913330078.h,
      child: Padding(
        padding:  EdgeInsets.only(
          left: left.r,
          right: right.r,
        ).r,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.elevatedButtonColor,
                elevation: 6,
                shadowColor: AppColors.elevatedButtonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.r),
                )
            ),
            onPressed: onPressed,
            child: Text(title,
              style: AppTextStyles.elevatedButtonTextStyle,
            )
        ),
      ),
    );
  }
}
