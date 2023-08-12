import 'package:flutter_templete/core/services/base_controller.dart';
import 'package:get/get.dart';

class homeController extends BaseController {
  RxInt currentIndex = 0.obs;
  bool isntEqualTwo() {
    return currentIndex != 2;
  }

  int incressIndex() {
    if (isntEqualTwo()) {
      currentIndex.value += 1;
    } else {
      currentIndex.value = 0;
    }
    return currentIndex.value;
  }
}
