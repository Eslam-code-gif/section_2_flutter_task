 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:section_2_flutter_task/core/constants/colors.dart';

class AppTextStyles {
  static TextStyle elevatedButtonTextStyle = GoogleFonts.lexendDeca(
    fontWeight: FontWeight.w300,
    fontSize: 19.sp,
    color: AppColors.white,
  );
  static TextStyle primaryColorW400Size24 = GoogleFonts.lexendDeca(
    fontWeight: FontWeight.w400,
    fontSize: 24.sp,
    color: AppColors.primaryText,
  );
  static TextStyle primaryColorW300Size14 = GoogleFonts.lexendDeca(
    fontWeight: FontWeight.w300,
    fontSize: 14.sp,
    color: AppColors.primaryText,
  );
  static TextStyle secondaryColorW500Size16 = GoogleFonts.lexendDeca(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    color: AppColors.secondaryText,
  );
  static TextStyle secondaryColorW200Size14 = GoogleFonts.lexendDeca(
    fontWeight: FontWeight.w200,
    fontSize: 14.sp,
    color: AppColors.secondaryText,
  );

}