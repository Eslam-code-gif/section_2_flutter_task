import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:section_2_flutter_task/core/constants/colors.dart';
import 'package:section_2_flutter_task/core/constants/svgs.dart';
import 'package:section_2_flutter_task/core/constants/texts.dart';

class LetIsStartScreen extends StatefulWidget {
  const LetIsStartScreen({super.key});

  @override
  State<LetIsStartScreen> createState() => _LetIsStartScreenState();
}

class _LetIsStartScreenState extends State<LetIsStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 90.h,),
            SvgPicture.asset(AppSvgs.letsStartSvg,
            width: 301.70001220703125.w,
              height: 342.862548828125.h,
            ),
            SizedBox(height: 60.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppTexts.welcomeMessage,
                textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(height: 40.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppTexts.readyTo,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.secondaryText,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                ),
              ],
            ),
            SizedBox(height: 68.h,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(331, 48.01129913330078),
                backgroundColor: Color(0xff149954),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                )
              ),
                onPressed: (){},
                child: Text(AppTexts.letsStartButton,
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w300,
                  color: AppColors.white,
                ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
