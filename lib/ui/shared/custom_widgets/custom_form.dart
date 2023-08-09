import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/utils.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hinttext,

    required this.mheight,
    required this.mwidth,
    this.fontsize,
    this.bradius,
    required this.controller,
    this.errorText,
    this.validator,
    this.iconName
  });


  final String? Function(String?)? validator;
  final String? hinttext;
  final double mheight;
  final double mwidth;
  final double? fontsize;
  final TextEditingController controller;
  final double? bradius;
  final String? errorText;
final String? iconName;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign:TextAlign.right,
      textDirection: TextDirection.rtl,
      textInputAction: TextInputAction.next,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
       suffixIcon:  SvgPicture.asset('assets/images/${iconName}' ,width: 0,height:2 ,color: AppColors.mainpurple1,fit: BoxFit.fill,) ,
        filled: true,
        fillColor: AppColors.mainskycolor,
        constraints: BoxConstraints(maxWidth: mwidth, maxHeight: mheight),
        contentPadding: const EdgeInsets.all(10),
        hintText: hinttext,
        hintStyle:
            TextStyle(color: AppColors.mainpurple3, fontSize: fontsize ?? 14),
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
