import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_templete/core/translation/app_translation.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_button.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templete/ui/views/login_view/loginview.dart';
import 'package:flutter_templete/ui/views/sign_up_view/sign_up_view.dart';
import 'package:get/get.dart';

void CustomOverlay({String? title, Widget? widget}) {
  Get.defaultDialog(
      title: title ?? "",
      content: widget ??
          Column(
            children: [
              SvgPicture.asset("assets/images/pana.svg"),
              Text(tr("key-overlay")),
              CustomButton(
                backgroundColor: AppColors.mainpurple1,
                text: tr("key_login"),
                onPressed: () {
                  Get.to(LoginView());
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(SignupView());
                    },
                    child: CustomText(
                      text: tr("key_account"),
                      textColor: AppColors.hinttext,
                    ),
                  ),
                  CustomText(
                    text: tr("key_create_account"),
                    textColor: AppColors.mainpurple1,
                  ),
                ],
              ),
            ],
          ));
}
