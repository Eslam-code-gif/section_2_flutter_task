import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:section_2_flutter_task/core/constants/colors.dart';
import 'package:section_2_flutter_task/core/constants/images.dart';
import 'package:section_2_flutter_task/core/constants/texts.dart';
import 'package:section_2_flutter_task/presentation/widgets/elevated_button.dart';
import 'package:section_2_flutter_task/presentation/widgets/text_form_field.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  GlobalKey<FormState> formKey= GlobalKey<FormState>();
  String? userName;

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
                    label: AppTexts.nameLabel,
                    hintText: AppTexts.nameHint,
                    textInputAction: TextInputAction.done,
                  right: 21,
                  left: 23,
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
                SizedBox(height: 27.h,),
                MyElevatedButton(
                    title: AppTexts.updateButton,
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
