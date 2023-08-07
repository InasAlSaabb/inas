import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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


          Center(child:Text('تسجسل الدخول'),),
          Center(child: SvgPicture.asset('assets/images/Login.svg')),

          Text('اسم المستخدم',style: TextStyle(color: AppColors.mainpurple1),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(hinttext: 'اسم المستخدم',icon:Icon(Icons.person_2),mheight: 84, mwidth: 100, controller:nameControler),
          ),
          Text('رمز الدخول',style: TextStyle(color: AppColors.mainpurple1),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(hinttext: 'رمز الدخول',icon:Icon(Icons.key_rounded),mheight: 84, mwidth: 100, controller:nameControler),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(backgroundColor: AppColors.mainpurple1,text: "تسجيل الدخول", onPressed:(){}),
          )
    ])


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
