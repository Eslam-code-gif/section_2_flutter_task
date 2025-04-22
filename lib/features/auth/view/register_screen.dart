import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:section_2_flutter_task/core/theme/colors.dart';
import 'package:section_2_flutter_task/core/utils/app_assets.dart';
import 'package:section_2_flutter_task/core/widgets/text_form_field.dart';

import '../../../core/localization/app_string/texts.dart';
import '../../../core/widgets/elevated_button.dart';

class RegisterScreen extends StatefulWidget {
  static const String routName='RegisterScreen';
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  GlobalKey<FormState> formKey= GlobalKey<FormState>();
  String? userName;
  String?password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
          children: [
            Image.asset(AppImages.mainImage,
            width: 375.w,
              height: 298.h,
            ),
            SizedBox(height: 23.h,),

            Padding(
              padding:  EdgeInsets.only(
                left: 23.r,
                right: 21.r
              ).r,
              child: Column(
                children: [
                  EmTextFormField(
                    label: AppTexts.nameLabel,
                    hintText: AppTexts.nameHint,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.name,
                    onSaved: (data){
                      userName = data;
                    },
                    validator: (value) {
                      RegExp regex = RegExp(
                          '([a-zA-Z])');

                      if (value!.isEmpty) {
                        return 'Please enter Your Username';
                      } else {
                        if (!regex.hasMatch(value)) {
                          return 'Enter valid Username';
                        } else {
                          return null;
                        }
                      }
                    },
                  ),
                  SizedBox(height: 10.h,),
                  EmTextFormField(
                    label: AppTexts.password,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (data){
                      password = data;
                    },
                    onSaved: (data){
                      password = data;
                    },
                    validator: (value) {
                      RegExp regex = RegExp(
                          AppTexts.passwordRegExp);
                      if ( value == null || value.isEmpty) {
                        return 'Please enter your New password';
                      } else {
                        if (!regex.hasMatch(value)) {
                          return 'Password must be at least 8 characters and include upper\n/lower case, number, and special character';
                        } else {
                          return null;
                        }
                      }
                    },
                  ),
                  SizedBox(height: 10.h,),
                  EmTextFormField(
                    label: AppTexts.confirmPasswordLabel,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      } else if (value != password) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 23.h,),
                  MyElevatedButton(
                    title: 'Register',
                    onPressed: (){
                      if (formKey.currentState?.validate() ?? false) {
                        formKey.currentState?.save();
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => LoginSecondScreen(),
                        //     )
                        // );
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
