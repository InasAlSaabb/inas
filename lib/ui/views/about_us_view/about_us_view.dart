import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_templete/core/translation/app_translation.dart';
import 'package:flutter_templete/main.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_shape.dart';
import 'package:get/get.dart';
import '../../shared/colors.dart';
import '../../shared/utils.dart';
import '../main_view/profile_view/profile_view.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomPaintHome(
            lable: tr("key_about_app"),
            svgName: 'ic_arrow',
            svgHieght: screenHieght(20),
            svgWidth: screenWidth(20),
            svgColor: AppColors.mainWhiteColor,
          ),
          (screenWidth(10)).ph,
          SvgPicture.asset(
            'assets/images/aboutus.svg',
            width: screenHieght(1.3),
            height: screenWidth(1.3),
          )
        ],
      ),
    );
  }
}
