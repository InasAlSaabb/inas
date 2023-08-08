import 'package:flutter/material.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/utils.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hinttext,
    this.icon,
    required this.mheight,
    required this.mwidth,
    this.fontsize,
    this.bradius,
    required this.controller,
    this.errorText,
    this.validator,
  });

  final Icon? icon;
  final String? Function(String?)? validator;
  final String? hinttext;
  final double mheight;
  final double mwidth;
  final double? fontsize;
  final TextEditingController controller;
  final double? bradius;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: icon,
        filled: true,
        fillColor: AppColors.mainskycolor,
        constraints: BoxConstraints(maxWidth: mwidth, maxHeight: mheight),
        contentPadding: const EdgeInsets.only(left: 30),
        hintText: hinttext,
        hintStyle:
            TextStyle(color: AppColors.mainskycolor, fontSize: fontsize ?? 14),
        enabledBorder: OutlineInputBorder(
          borderSide: new BorderSide(
            color: AppColors.mainskycolor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(bradius ?? 5),
        ),
      ),
    );
  }
}
