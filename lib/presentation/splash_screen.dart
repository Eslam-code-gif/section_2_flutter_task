import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:section_2_flutter_task/core/constants/colors.dart';
import 'package:section_2_flutter_task/core/constants/svgs.dart';
import 'package:section_2_flutter_task/presentation/let_is_start_screen.dart';
class SplashScreen extends StatefulWidget {
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
      Navigator.pushReplacement(context,
          MaterialPageRoute(
            builder: (context) => LetIsStartScreen(),
          ));
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