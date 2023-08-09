import 'package:flutter/material.dart';
import 'package:flutter_templete/core/data/reposotories/shared_prefernces.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_button.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_form.dart';

import '../../../core/data/reposotories/user_repository.dart';
import '../../shared/custom_widgets/custom_toast.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var nameControler = TextEditingController();
  var emailControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Text('تسجسل الدخول'),
          ),
          // Center(child :
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextFormField(
              controller: nameControler,
              fillColor: null,
              hintText: '',
              hintTextColor: null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextFormField(
              controller: nameControler,
              fillColor: null,
              hintText: '',
              hintTextColor: null,
            ),
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
        ],
      ),
    );
  }
}
