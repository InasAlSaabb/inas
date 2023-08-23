import 'package:flutter/material.dart';
import 'package:flutter_templete/core/data/models/apis/specialmodel.dart';
import 'package:flutter_templete/core/data/reposotories/class_repository.dart';
import 'package:flutter_templete/core/data/reposotories/user_repository.dart';
import 'package:flutter_templete/core/enums/message_type.dart';
import 'package:flutter_templete/core/services/base_controller.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_toast.dart';
import 'package:flutter_templete/ui/views/main_view/main_view.dart';
import 'package:get/get.dart';

class SignupController extends BaseController {
  RxBool loaader = false.obs;
  TextEditingController nameControler = TextEditingController();
  TextEditingController phoneControler = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  RxInt selectedValue = 1.obs;
  RxList<SpecializationModel> category = <SpecializationModel>[].obs;

  @override
  void onInit() {
    CollegeRepository().getAllColleges();
    super.onInit();
  }

  void SignUp() {
    if (formKey.currentState!.validate()) {
      loaader.value = true;
      CustomToast.showMessage(message: 'ok', messageType: MessageType.SUCCESS);
    }
    UserRepository()
        .register(user_name: "", collage_id: "", phone: "")
        .then((value) {
      value.fold((l) {
        loaader.value = false;
        CustomToast.showMessage(messageType: MessageType.REJECTED, message: l);
      }, (r) {
        Get.off(MainView());
      });
    });
  }
}
