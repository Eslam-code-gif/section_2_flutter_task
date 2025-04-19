import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:section_2_flutter_task/core/constants/colors.dart';
import 'package:section_2_flutter_task/core/constants/fonts.dart';
import 'package:section_2_flutter_task/core/constants/svgs.dart';
import 'package:section_2_flutter_task/core/constants/texts.dart';
import 'package:section_2_flutter_task/presentation/widgets/elevated_button.dart';

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
                  style: AppTextStyles.primaryColorW400Size24,
                )
              ],
            ),
            SizedBox(height: 40.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppTexts.readyTo,
                textAlign: TextAlign.center,
                style: AppTextStyles.secondaryColorW500Size16,
                ),
              ],
            ),
            SizedBox(height: 68.h,),
            MyElevatedButton(
              title: AppTexts.letsStartButton,
            onPressed: (){},
               left: 22,
              right: 22,

            ),
          ],
        ),
      ),
    );
  }
}
