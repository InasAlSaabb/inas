import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_templete/core/data/reposotories/shared_prefernces.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/core/utils/string_util.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_button.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_form.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_text.dart';

import '../../../core/data/reposotories/user_repository.dart';
import '../../shared/custom_widgets/custom_toast.dart';
import 'login_controller.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var nameControler = TextEditingController();
  var passwordControler = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: ListView(children: [
        Center(
          child: Text('تسجيل الدخول'),
        ),
        Center(child: SvgPicture.asset('assets/images/Login.svg')),
        CustomText(
          text: 'اسم المستخدم',
          textColor: AppColors.mainpurple1,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomTextField(
              validator: (value){
                if (value!.isEmpty) {
                  return 'أدخل حقل رمز الدخول';
                }
                if (!StringUtil.isPassword(value)) {
                  return 'تأكد ان رمز الدخول صحيح';
                }
                return null;


              },
              hinttext: 'اسم المستخدم',
              iconName: 'ic_user.svg',
              mheight: 84,
              mwidth: 100,
              controller: nameControler),
        ),
        CustomText(
          text: 'رمز الدخول ',
          textColor: AppColors.mainpurple1,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomTextField(
              validator: (value){
                if (value!.isEmpty) {
                  return 'أدخل حقل رمز الدخول';
                }
                if (!StringUtil.isPassword(value)) {
                  return 'تأكد ان رمز الدخول صحيح';
                }
                return null;


              },
              hinttext: 'رمز الدخول',
              iconName: 'ic_key.svg',
              mheight: 84,
              mwidth: 100,
              controller: passwordControler),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomButton(
              backgroundColor: AppColors.mainpurple1,
              text: "تسجيل الدخول",
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              }),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Row(
            children: [

              InkWell(
                onTap: () {},
                child: CustomText(
                  text: "أنشئ حسابك الان",
                  textColor: AppColors.mainpurple1,
                ),
              ),
              CustomText(
                text: 'ليس لديك حساب؟',
                textColor: AppColors.hinttext,
              ),
            ],
          ),
        )
      ]),
    )

        // CustomTextFormField(
        //     hintText: 'enter your name',
        //     controller: nameControler,
        //     fillColor: Colors.cyanAccent,
        //     hintTextColor: Colors.grey),
        // SizedBox(height: 20,),
        // CustomTextFormField(
        //     hintText: 'enter your name',
        //     controller: emailControler,
        //     fillColor: AppColors.hinttext  ,
        //     hintTextColor: Colors.grey),
        // SizedBox(height: 20,),
        // CustomButton(
        //     text: 'Login',
        //     onPressed: () {
        //       UserRepository()
        //           .Login(
        //               email: emailControler.text,
        //               password: nameControler.text)
        //           .then((value) {
        //         value.fold((l) {
        //           CustomToast.showMessage(message: l);
        //         }, (r) {
        //
        //          print("hello missie =======${r}");
        //           SharedPrefrenceRepostory().setTokenInfo(r);
        //         });
        //       });
        //       // UserRepositoriey()
        //       //     .login(
        //       //     email: emailController.text,
        //       //     password: passwordController.text)
        //       //     .then((value) {
        //       //   value.fold((l) {
        //       //     CustomShowToast.showMessage(
        //       //         messageType: MessageType.REJECTED,
        //       //         size: size,
        //       //         message: l);
        //       //   }, (r) {
        //       //     SharedPreferenceRepositories.setTokenIno(r);
        //       //     Get.off(MainView());
        //       //   });
        //       // })
        //     })

        );
  }
}
