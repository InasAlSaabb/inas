import 'package:flutter/material.dart';
import 'package:flutter_templete/core/enums/bottom_Navigation.dart';
import 'package:flutter_templete/core/services/base_controller.dart';
import 'package:flutter_templete/core/translation/app_translation.dart';

import 'package:get/get.dart';

class MainController extends BaseController {
  Rx<BottomNavigationEnum> selectedPage = BottomNavigationEnum.HOME.obs;
  PageController pageController = PageController(initialPage: 2);
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  RxString Name = "".obs;
  RxString Image = "".obs;

  @override
  void onInit() {
    Name.value = "الرئيسية";
    Image.value = "ic_home";
    super.onInit();
  }

  void changeShapeMakerauto({
    required BottomNavigationEnum selected,
  }) {
    selectedPage.value = selected;
    switch (selected) {
      case BottomNavigationEnum.NOTIFICATIONS:
        Name.value = "الاشعارات";
        Image.value = "ic_notification";
        break;
      case BottomNavigationEnum.HOME:
        Name.value = "الرئيسية";
        Image.value = "ic_home";
        break;
      case BottomNavigationEnum.IMPORTANTQUESTIONS:
        Name.value = "الاسئلة الهامة";
        Image.value = "ic_home";
        break;
      case BottomNavigationEnum.PROFILE:
        Name.value = "البروفايل";
        Image.value = "ic_profile";
        break;
    }
  }

  void pageNavigation(BottomNavigationEnum selected, int pageNumber) {
    pageController.animateToPage(
      pageNumber,
      duration: Duration(
        microseconds: 500,
      ),
      curve: Curves.easeInCirc,
    );

    changeShapeMakerauto(selected: selected);
  }
}
