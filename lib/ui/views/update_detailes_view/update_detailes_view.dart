import 'package:flutter/material.dart';
import 'package:flutter_templete/main.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_form.dart';
import 'package:get/get.dart';

import '../../../core/utils/string_util.dart';
import '../../shared/colors.dart';
import '../../shared/custom_widgets/custom_button.dart';
import '../../shared/custom_widgets/custom_paint_for_home.dart';
import '../../shared/utils.dart';
import '../main_view/profile_view/profile_view.dart';
class UpdateDetailes extends StatefulWidget {
  const UpdateDetailes({Key? key}) : super(key: key);

  @override
  State<UpdateDetailes> createState() => _UpdateDetailesState();
}

class _UpdateDetailesState extends State<UpdateDetailes> {
  var nameControler = TextEditingController();
  var phoneControler = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Form(
      key:_formKey ,
      child: Column(children: [ CustomPaintHome(
        lable: 'تعديل المعلومات الشخصية',
        svgName: 'ic_user',
        svgHieght: screenHieght(20),
        svgWidth: screenWidth(20),
        svgColor: AppColors.mainWhiteColor,
      ),
        (screenWidth(4)).ph,

        Align(
          alignment: Alignment.centerRight,
          child: Text('اسم المستخدم',
            style: TextStyle(
              height: 1.2,
              decoration: TextDecoration.none,
              color: AppColors.mainpurple2,
              fontSize: screenWidth(15),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        (screenWidth(25)).ph,
        CustomTextField(
          suffixiconName: 'ic_edit.svg',
            validator: (value) {
              if (value!.isEmpty) {
                return 'ادخل الاسم الجديد';
              }
              if (!StringUtil.isName(value)) {
                return 'تأكد من ادخال الاسم بشكل صحيح';
              }
              return null;
            },
            hinttext: 'اسم المستخدم',
            iconName: 'ic_user.svg',

            mheight: screenHieght(12),
            mwidth: screenWidth(1.1),
            controller: nameControler,
        ),
        (screenWidth(25)).ph,
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            'رقم الهاتف',
            style: TextStyle(
              height: 1.2,
              decoration: TextDecoration.none,
              color: AppColors.mainpurple2,
              fontSize: screenWidth(15),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        (screenWidth(25)).ph,
        CustomTextField(
            validator:(value) {
              if (value!.isEmpty) {
                return 'ادخل رقم الهاتف الجديد';
              }
              if (!StringUtil.isName(value)) {
                return 'تأكد من رقم الهاتف بشكل صحيح';
              }
              return null;
            },
            suffixiconName: 'ic_edit.svg',
            hinttext: 'رقم الهاتف',
            iconName: 'ic_phone.svg',
            mheight: screenHieght(12),
            mwidth: screenWidth(1.1),
            controller:phoneControler ),
        (screenWidth(2)).ph,
        CustomButton(
            backgroundColor: AppColors.mainpurple1,
            text: 'حفظ التغيرات',
            onPressed: () {
              if (_formKey.currentState!.validate()) {}
            }),
        (screenWidth(15)).ph,
        InkWell(
          onTap: () {
            Get.to(ProfileView());

          },
          child: Text(
            ' تراجع',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: AppColors.hinttext,
              fontSize: screenWidth(28),
              fontWeight: FontWeight.normal,
            ),
          ),
        )

      ],),
    ) );
  }
}
