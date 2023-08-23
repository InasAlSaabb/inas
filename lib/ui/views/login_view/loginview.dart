import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_templete/core/translation/app_translation.dart';
import 'package:flutter_templete/core/utils/string_util.dart';
import 'package:flutter_templete/main.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_button.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_form.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templete/ui/shared/utils.dart';
import 'package:flutter_templete/ui/views/login_view/login_controller.dart';
import 'package:flutter_templete/ui/views/main_view/main_view.dart';
import 'package:flutter_templete/ui/views/sign_up_view/sign_up_view.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: controller.formKey,
      child: Padding(
        padding: EdgeInsetsDirectional.all(screenWidth(25)),
        child: SafeArea(
          child: ListView(children: [
            (screenWidth(10)).ph,
            Center(
              child: Text(
                tr("key_login"),
                style: TextStyle(
                  height: 1.2,
                  decoration: TextDecoration.none,
                  color: AppColors.hinttext,
                  fontSize: screenWidth(15),
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            (screenWidth(25)).ph,
            Center(child: SvgPicture.asset('assets/images/Login.svg')),
            (screenWidth(25)).ph,
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                tr("key_user_name"),
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return tr("key_enter _your_key");
                  }
                  if (!StringUtil.isPassword(value)) {
                    return tr("key_ confirm_enter _your_key");
                  }
                  return null;
                },
                hinttext: 'اسم المستخدم',
                iconName: 'ic_user.svg',
                mheight: screenHieght(12),
                mwidth: screenWidth(1.1),
                controller: controller.username),
            (screenWidth(25)).ph,
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                tr("key_key"),
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return tr("key_enter _your_key");
                  }
                  if (!StringUtil.isPassword(value)) {
                    return tr("key_ confirm_enter _your_key");
                  }
                  return null;
                },
                hinttext: tr("key_key"),
                iconName: 'ic_key.svg',
                mheight: screenHieght(12),
                mwidth: screenWidth(1.1),
                controller: controller.enterCode),
            (screenWidth(25)).ph,
            Obx(() {
              return controller.loader.value
                  ? SpinKitThreeBounce(
                      color: AppColors.mainpurple1,
                    )
                  : CustomButton(
                      onPressed: () {
                        Get.to(MainView());
                      },
                      backgroundColor: AppColors.mainpurple1,
                      text: tr('key_login'),
                    );
            }),
            (screenWidth(25)).ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: CustomText(
                    text: tr("key_account"),
                    textColor: AppColors.hinttext,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(SignupView());
                  },
                  child: CustomText(
                    text: tr("key_create_account"),
                    textColor: AppColors.mainpurple1,
                  ),
                ),
              ],
            ),
            (screenWidth(2.5)).ph,
            InkWell(
              onTap: () {
                Get.to(MainView());
              },
              child: Center(
                child: Text(
                  tr("key_visit"),
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: AppColors.hinttext,
                    fontSize: screenWidth(28),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    ));
  }
}
