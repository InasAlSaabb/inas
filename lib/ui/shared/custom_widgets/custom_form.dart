import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/utils.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {required this.controller,
      this.hinttext,
      required this.mheight,
      required this.mwidth,
      this.fontsize,
      this.bradius,
      this.iconName,
      this.errorText,
      this.validator,
      this.backgroundColor,
      this.suffixiconName});

  final String? Function(String?)? validator;
  final String? hinttext;
  final double mheight;
  final double mwidth;
  final double? fontsize;
  final TextEditingController controller;
  final double? bradius;
  final String? errorText;
  final String? iconName;
  final String? suffixiconName;

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      textAlign: TextAlign.right,
      textDirection: TextDirection.rtl,
      textInputAction: TextInputAction.next,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
// update by ahmad *****
        suffixIcon: UnconstrainedBox(
          child: SvgPicture.asset(
            'assets/images/${suffixiconName}',
            width: screenWidth(20),
            color: AppColors.mainpurple1withopa,
            // fit: BoxFit.fill,
          ),
        ),

        prefixIcon: UnconstrainedBox(
          child: SvgPicture.asset(
            'assets/images/${iconName}',
            width: screenWidth(20),
            color: AppColors.mainpurple1withopa,
            // fit: BoxFit.fill,
          ),
        ),
        filled: true,
        fillColor: AppColors.mainskycolor2,
        constraints: BoxConstraints(maxWidth: mwidth, maxHeight: mheight),
        contentPadding: const EdgeInsets.all(2),
        hintText: hinttext,
        hintStyle: TextStyle(
          color: AppColors.mainpurple1withopa,
          fontSize: screenWidth(22),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: new BorderSide(
            color: AppColors.mainskycolor2,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(bradius ?? 5),
        ),
      ),
    );
  }
}
