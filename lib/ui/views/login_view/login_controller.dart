import 'package:flutter/material.dart';
import 'package:flutter_templete/core/data/reposotories/user_repository.dart';
import 'package:flutter_templete/core/enums/message_type.dart';
import 'package:flutter_templete/core/services/base_controller.dart';
import 'package:flutter_templete/core/utils/general_utils.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_toast.dart';
import 'package:flutter_templete/ui/views/main_view/main_view.dart';
import 'package:get/get.dart';

class LoginController extends BaseController {
  RxBool loader = false.obs;
  TextEditingController username = TextEditingController();
  TextEditingController enterCode = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void login() {
    if (formKey.currentState!.validate()) {
      runFutureFunctionWithFullLoading(
          function: UserRepository()
              .Login(email: username.text, password: enterCode.text)
              .then((value) {
        value.fold((l) {
          loader.value = false;
          CustomToast.showMessage(
              messageType: MessageType.REJECTED, message: l);
        }, (r) {
          storage.setTokenInfo(r);
          Get.off(MainView());
          formKey.currentState!.save();
        });
      }));
    }
  }
}
