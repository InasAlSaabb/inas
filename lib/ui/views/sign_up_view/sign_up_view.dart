import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_templete/core/translation/app_translation.dart';
import 'package:flutter_templete/main.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_button.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_form.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templete/ui/shared/utils.dart';
import 'package:flutter_templete/ui/views/login_view/loginview.dart';
import 'package:flutter_templete/ui/views/sign_up_view/sign_up_controller.dart';
import 'package:get/get.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  var nameControler = TextEditingController();
  var phoneControler = TextEditingController();
  late int selected = 1;
  SignUpController controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
          padding: EdgeInsetsDirectional.all(screenWidth(18)),
          child: Column(children: [
            (screenWidth(20)).ph,
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: SvgPicture.asset(
                    color: AppColors.hinttext,
                    "assets/images/ic_arrow.svg",
                    width: screenWidth(20),
                    height: screenHieght(30),
                  ),
                ),
                SizedBox(
                  width: screenWidth(3.5),
                ),
                Text(
                  tr("key_create_account1"),
                  style: TextStyle(
                    height: 1.2,
                    decoration: TextDecoration.none,
                    color: AppColors.hinttext,
                    fontSize: screenWidth(20),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            (screenWidth(20)).ph,
            SvgPicture.asset(
              'assets/images/signup.svg',
            ),
            (screenWidth(20)).ph,
            Align(
              alignment: Alignment.centerRight,
              child: CustomText(
                fontSize: screenWidth(20),
                text: tr("key_user_name"),
                textColor: AppColors.mainpurple2,
              ),
            ),
            30.ph,
            CustomTextField(
              hinttext: tr("key_user_name"),
              controller: nameControler,
              mheight: screenHieght(12),
              mwidth: screenWidth(1),
              iconName: "ic_user.svg",
            ),
            (screenWidth(25)).ph,
            Align(
              alignment: Alignment.centerRight,
              child: CustomText(
                fontSize: screenWidth(20),
                text: tr("key_mobile_num"),
                textColor: AppColors.mainpurple2,
              ),
            ),
            (screenWidth(25)).ph,
            CustomTextField(
              controller: phoneControler,
              mheight: screenHieght(12),
              mwidth: screenWidth(1),
              iconName: "ic_phone.svg",
              hinttext: tr("key_mobile_num"),
            ),
            (screenWidth(25)).ph,
            Align(
              alignment: Alignment.centerRight,
              child: CustomText(
                fontSize: screenWidth(20),
                text: tr("key_select_specialty"),
                textColor: AppColors.mainpurple2,
              ),
            ),
            (screenWidth(50)).ph,
            Row(
              children: <Widget>[
                buildCustomRadioButton(1, 'key_medicine'),
                buildCustomRadioButton(2, 'key_dentist'),
                buildCustomRadioButton(3, 'key_faculty_of_pharmac'),
              ],
            ),
            Row(
              children: <Widget>[
                buildCustomRadioButton(4, 'key_it'),
                buildCustomRadioButton(5, 'key_arch'),
                buildCustomRadioButton(6, 'key_nurs'),
              ],
            ),
            (screenWidth(10)).ph,
            CustomButton(
              onPressed: () {
                Get.off(const SignupView());
              },
              backgroundColor: AppColors.mainpurple1,
              text: tr("key_create_account1"),
            ),
            (screenWidth(30)).ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  fontSize: screenWidth(25),
                  text: tr("key_have_account"),
                  textColor: AppColors.hinttext,
                ),
                InkWell(
                  onTap: () {},
                  child: CustomText(
                    fontSize: screenWidth(25),
                    text: tr("key_login"),
                    textColor: AppColors.mainpurple1,
                  ),
                ),
              ],
            ),
          ])),
    ));
  }

  Widget buildCustomRadioButton(int value, String key) {
    return Expanded(
      child: Row(children: [
        Radio(
          value: value,
          groupValue: selected,
          onChanged: (newValue) {
            setState(() {
              selected = newValue!;
            });
          },
          activeColor: AppColors.mainpurple1,
        ),
        CustomText(
          text: tr(key),
          fontSize: screenWidth(39),
          textColor: AppColors.hinttext,
        )
      ]),
    );
  }
}
