import 'package:flutter/material.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_shape.dart';
import 'package:flutter_templete/ui/views/home_view/home_view.dart';

import 'package:flutter_templete/ui/views/main_view/important_question/importantQuestion.dart';
import 'package:flutter_templete/ui/views/main_view/main_view_controller.dart';
import 'package:flutter_templete/ui/views/main_view/main_view_widgets/bottom_navigation_widget.dart';
import 'package:flutter_templete/ui/views/main_view/notification_view/notification_view.dart';
import 'package:flutter_templete/ui/views/main_view/profile_view/profile_view.dart';
import 'package:get/get.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  MainController controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: controller.scaffoldKey,
      body: Obx(
        () {
          return Stack(
            children: [
              PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: controller.pageController,
                children: [
                  ProfileView(),
                  ImportantQuestion(),
                  HomeView(),
                  NotificationView(),
                ],
              ),
              CustomPaintHome(
                svgColor: AppColors.mainWhiteColor,
                svgName: controller.Image.toString(),
                lable: controller.Name.toString(),
              ),
              PositionedDirectional(
                bottom: 0,
                child: BottomNavigationWidget(
                  bottomNavigationEnum: controller.selectedPage.value,
                  onTap: (selectedEnum, pageNumber) {
                    controller.pageNavigation(selectedEnum, pageNumber);
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
