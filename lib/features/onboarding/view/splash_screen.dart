import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:section_2_flutter_task/features/onboarding/view/let_is_start_screen.dart';

import '../../../core/theme/colors.dart';
import '../../../core/utils/app_assets.dart';
class SplashScreen extends StatefulWidget {
  static const String routName = 'SplashScreen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreen();
}
class _SplashScreen extends State <SplashScreen>{
  @override
  void initState(){
    super.initState();
    goToLoginScreen();
  }
  void goToLoginScreen() {
    Future.delayed(
        Duration(seconds: 4), ()
    {
      Navigator.pushReplacementNamed(context, LetIsStartScreen.routName);
    }
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: Center(
        child: SvgPicture.asset(AppSvgs.splashSvg,
        width: 334.w,
          height:433.h ,
        ),
      ),
    );
  }
}