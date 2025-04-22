import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/localization/app_string/texts.dart';
import '../../../core/theme/colors.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/widgets/elevated_button.dart';
import '../../../core/widgets/text_form_field.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  GlobalKey<FormState> formKey= GlobalKey<FormState>();
 String?oldPassword;
  String?newPassword;

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
              EmTextFormField(
                label: AppTexts.oldPasswordLabel,
                textInputAction: TextInputAction.next,
                right: 21,
                left: 23,
                keyboardType: TextInputType.visiblePassword,
                onSaved: (data){
                  oldPassword=data;
                },
                validator: (value) {
                  RegExp regex = RegExp(
                      AppTexts.passwordRegExp);
                  if ( value == null || value.isEmpty) {
                    return AppTexts.oldPasswordEmpty;
                  } else {
                    if (!regex.hasMatch(value)) {
                      return AppTexts.oldPasswordError;
                    } else {
                      return null;
                    }
                  }
                },
              ),
              SizedBox(height: 10.h,),
              EmTextFormField(
                label: AppTexts.newPasswordLabel,
                textInputAction: TextInputAction.next,
                right: 21,
                left: 23,
                keyboardType: TextInputType.visiblePassword,
                onChanged: (data){
                  newPassword = data;
                },
                onSaved: (data){
                  newPassword = data;
                },
                validator: (value) {
                RegExp regex = RegExp(
                    AppTexts.passwordRegExp);
                if ( value == null || value.isEmpty) {
                  return 'Please enter your New password';
                } else {
                  if (!regex.hasMatch(value)) {
                    return 'New password must be at least 8 characters and include upper\n/lower case, number, and special character';
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
                right: 21,
                left: 23,
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  } else if (value != newPassword) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              SizedBox(height: 23.h,),
              MyElevatedButton(
                title: AppTexts.saveButton,
                right: 21,
                left: 23,
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
      ),
    );
  }
}
