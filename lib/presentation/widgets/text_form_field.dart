import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:section_2_flutter_task/core/constants/fonts.dart';

import '../../core/constants/colors.dart';

class EmTextFormField extends StatefulWidget {
  const EmTextFormField({
    super.key,
    required this.label,
    required this.hintText,
    this.onSaved,
    this.validator,
    this.keyboardType,
    this.onChanged,
    required this.textInputAction,
    required this.right,
    required this.left,
  });

  final String label; //*
  final String hintText; //*
  final void Function(String?)? onSaved; //*
  final void Function(String?)? onChanged; //*
  final String? Function(String?)? validator; //*
  final TextInputType? keyboardType; //*
  final TextInputAction? textInputAction; //*
  final double right;
  final double left;

  @override
  State<EmTextFormField> createState() => _EmTextFormFieldState();
}

class _EmTextFormFieldState extends State<EmTextFormField> {
  late double _left;
  late double _right;
  @override
  void initState() {
    super.initState();
    _left = widget.left;
    _right = widget.right;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 63.h,
      child: Padding(
        padding:  EdgeInsets.only(
          left: _left.r,
          right: _right.r,
        ).r,
        child: TextFormField(
          onSaved: widget.onSaved,
          validator: widget.validator,
          onChanged: widget.onChanged,
          cursorColor: AppColors.borderColor,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          style: AppTextStyles.primaryColorW300Size14,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.r)),
              borderSide: BorderSide(
                color: AppColors.borderColor,
              ),
            ),
            focusedBorder:
            OutlineInputBorder(

              borderRadius:BorderRadius.all(Radius.circular(15.r)),
              borderSide: BorderSide(
                color: AppColors.borderColor,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.r)),
              borderSide: BorderSide(
                color: Colors.red,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.r)),
              borderSide: BorderSide(
                color: Colors.red,
              ),
            ),
            label: Text(widget.label,
                style: AppTextStyles.secondaryColorW200Size14
            ),
            hintText: widget.hintText,
            hintStyle: AppTextStyles.secondaryColorW200Size14,
          ),
        ),
      ),
    );
  }
}
