// import 'package:flutter/material.dart';
// import 'package:flutter_templete/core/data/reposotories/user_repository.dart';
// import 'package:flutter_templete/core/enums/message_type.dart';
// import 'package:flutter_templete/core/services/base_controller.dart';
// import 'package:flutter_templete/ui/shared/custom_widgets/custom_toast.dart';
// import 'package:flutter_templete/ui/views/login_view/loginview.dart';
// import 'package:get/get.dart';

// import '../../../core/utils/string_util.dart';

// class LoginController extends BaseController {
//   String? isPassword(value) {
//     if (value!.isEmpty) {
//       return 'أدخل حقل رمز الدخول';
//     }
//     if (!StringUtil.isPassword(value)) {
//       return 'تأكد ان رمز الدخول صحيح';
//     }
// //  return null;
//   }

//   String? isName(value) {
//     if (value!.isEmpty) {
//       return 'أدخل حقل رمز الدخول';
//     }
//     if (!StringUtil.isPassword(value)) {
//       return 'تأكد ان رمز الدخول صحيح';
//     }
//     return null;
//   }

//   void register() {
//     if (formKey.currentState!.validate()) {
//       runFullLoadingFutureFunction(
//           function: UserRepository()
//               .register(
//                   // email: emailController.text,
//                   // firstname: firstnameController.text,
//                   // lastname: lastnameController.text,
//                   // age: int.parse(ageController.text),
//                   // password: passwordController.text,
//                   // Images: selectedFile.value.path ?? '',
//                   )
//               .then((value) => value.fold(
//                     (l) {
//                       CustomToast.showMessage(
//                         messageType: MessageType.REJECTED,
//                         message: l,
//                       );
//                     },
//                     (r) {
//                       Get.to(LoginView());
//                     },
//                   )));
//     } else {
//       CustomToast.showMessage(
//         messageType: MessageType.REJECTED,
//         message: "error",
//       );
//     }
//   }
// }
