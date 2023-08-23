import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
//?Inass

class _SignupViewState extends State<SignupView> {
  late int selected = 1;
  SignupController controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: controller.formKey,
        child: Padding(
            padding: EdgeInsetsDirectional.all(screenWidth(18)),
            child: ListView(children: [
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
                controller: controller.nameControler,
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
                controller: controller.phoneControler,
                mheight: screenHieght(12),
                mwidth: screenWidth(1),
                iconName: "login signup icons.svg",
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

              Obx(() {
                return GridView.builder(
                  shrinkWrap: true,
                  itemCount: controller.category.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: <Widget>[
                        buildCustomRadioButton(
                            controller.category[index].categoryId!,
                            controller.category[index].collageName!),

                        // buildCustomRadioButton(2, 'key_dentist'),
                        // buildCustomRadioButton(3, 'key_faculty_of_pharmac'),
                      ],
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 1,
                      mainAxisExtent: screenWidth(8),
                      mainAxisSpacing: 1),
                );
              }),

              // Row(
              //   children: <Widget>[
              //     buildCustomRadioButton(1, 'key_medicine'),
              //     buildCustomRadioButton(2, 'key_dentist'),
              //     buildCustomRadioButton(3, 'key_faculty_of_pharmac'),
              //   ],
              // ),
              // Row(
              //   children: <Widget>[
              //     buildCustomRadioButton(4, 'key_it'),
              //     buildCustomRadioButton(5, 'key_arch'),
              //     buildCustomRadioButton(6, 'key_nurs'),
              //   ],
              // ),
              (screenWidth(10)).ph,
              controller.loaader.value
                  ? SpinKitThreeBounce(
                      color: AppColors.mainpurple1,
                    )
                  : CustomButton(
                      onPressed: () {
                        Get.to(SignupView());
                      },
                      backgroundColor: AppColors.mainpurple1,
                      text: tr('key_create_account'),
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
                    onTap: () {
                      Get.to(LoginView());
                    },
                    child: CustomText(
                      fontSize: screenWidth(25),
                      text: tr("key_login"),
                      textColor: AppColors.mainpurple1,
                    ),
                  ),
                ],
              ),
            ])),
      ),
    ));
  }

  Widget buildCustomRadioButton(int value, String key) {
    return Obx(
      () {
        return Row(
          children: [
            Radio(
              value: value,
              groupValue: controller.selectedValue.value,
              onChanged: (Value) {
                controller.selectedValue.value = Value!;
              },
              activeColor: AppColors.mainpurple1,
            ),
            CustomText(
              text: tr(key),
              fontSize: screenWidth(34),
              textColor: AppColors.hinttext,
            )
          ],
        );
      },
    );
  }
}
