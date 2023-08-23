import 'package:flutter_templete/ui/views/login_view/loginview.dart';
import 'package:get/get.dart';

class SplashSceenController extends GetxController {
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 4)).then((value) async {
      {
        Get.off(LoginView());
      }

      super.onInit();
    });
  }
}
