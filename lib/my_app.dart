import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:section_2_flutter_task/features/onboarding/view/splash_screen.dart';

import 'features/auth/view/register_screen.dart';
import 'features/onboarding/view/let_is_start_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: {
          SplashScreen.routName:(_)=>SplashScreen(),
          LetIsStartScreen.routName:(_)=>LetIsStartScreen(),
          RegisterScreen.routName:(_)=>RegisterScreen(),


        },
      ),
    );
  }
}
