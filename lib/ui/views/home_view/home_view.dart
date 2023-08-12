import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_templete/main.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/views/home_view/home_view_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_form.dart';
import 'package:flutter_templete/ui/shared/utils.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController controllerSearch = TextEditingController();
  homeController controller = Get.put(homeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Row(
                children: [
                  ClipPath(
                    clipper: homeClipper(),
                    child: Container(
                      color: AppColors.mainpurple1,
                    ),
                  ),
                  Icon(Icons.home),
                  screenWidth(5).ph,
                  Text(
                    "الرئيسية",
                    style: TextStyle(color: AppColors.mainWhiteColor),
                  )
                ],
              )
            ],
          ),
          screenWidth(30).ph,
          // CustomTextField(
          //   mheight: screenHieght(1),
          //   mwidth: screenWidth(1),
          //   controller: controllerSearch,
          //   hinttext: "بحث",

          // ),

          SvgPicture.asset(
              'assets/images/intro${controller.currentIndex.value}.svg'),
          30.ph,
          new DotsIndicator(
              dotsCount: 3,
              position: controller.currentIndex.value.toDouble(),
              decorator: DotsDecorator(
                activeShape: ContinuousRectangleBorder(
                    side: BorderSide(color: AppColors.mainpurple1)),
                shape: ContinuousRectangleBorder(),
                color: AppColors.mainWhiteColor,
                activeColor: AppColors.mainpurple1,
              )),
        ],
      ),
    );
  }
}

class homeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.9956692);
    path_0.cubicTo(
        size.width * 0.1023160,
        size.height * 0.6877908,
        size.width * 0.3315975,
        size.height * 0.7502392,
        size.width * 0.4827750,
        size.height * 0.7914154);
    path_0.lineTo(size.width * 0.4827800, size.height * 0.7914154);
    path_0.cubicTo(
        size.width * 0.4872275,
        size.height * 0.7926308,
        size.width * 0.4916075,
        size.height * 0.7938231,
        size.width * 0.4959150,
        size.height * 0.7949846);
    path_0.cubicTo(
        size.width * 0.5370950,
        size.height * 0.8061231,
        size.width * 0.5762375,
        size.height * 0.8183692,
        size.width * 0.6133025,
        size.height * 0.8299692);
    path_0.cubicTo(
        size.width * 0.7922475,
        size.height * 0.8859615,
        size.width * 0.9227175,
        size.height * 0.9267923,
        size.width,
        size.height * 0.7537508);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(0, 0);
    path_0.lineTo(0, size.height * 0.9956692);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
