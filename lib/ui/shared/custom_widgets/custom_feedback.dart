import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_templete/core/translation/app_translation.dart';
import 'package:flutter_templete/main.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_button.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_form.dart';
import 'package:flutter_templete/ui/shared/utils.dart';
import 'package:get/get.dart';

void CustomfeedBack({
  Widget? widget,
}) {
  Get.defaultDialog(
      title: "",
      content: Container(
        // TextEditingController feedBack = TextEditingController(),
        width: screenWidth(1.2),
        height: screenHieght(2),
        decoration: BoxDecoration(
          color: AppColors.mainWhiteColor,
          border: Border.all(color: AppColors.mainpurple1, width: 2),
          boxShadow: [
            BoxShadow(
              color: AppColors.hinttext,
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
          borderRadius: BorderRadiusDirectional.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth(20), vertical: screenWidth(25)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(start: screenWidth(1.8)),
                child: SvgPicture.asset(
                  'assets/images/🦆 icon _close_.svg',
                  height: screenWidth(20),
                ),
              ),
              SvgPicture.asset(
                'assets/images/send feed back.svg',
                height: screenWidth(3),
              ),
              CustomTextField(
                max: 8,
                hinttext: tr("Key_sendfeed"),
                mheight: screenHieght(4),
                mwidth: screenWidth(1),
              ),
              2.ph,
              CustomButton(
                height: screenWidth(9),
                onPressed: () {},
                text: tr('Key_send'),
              ),
            ],
          ),
        ),
      ));
}
