import 'package:flutter/material.dart';
import 'package:flutter_templete/core/translation/app_translation.dart';
import 'package:flutter_templete/main.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_container.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_form.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_ship.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/customslider.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/mycategory.dart';
import 'package:flutter_templete/ui/shared/utils.dart';
import 'package:flutter_templete/ui/views/main_view/home_view/home_view_controller.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController controller = Get.put(HomeController());
  List<String> category = [
    'الكل',
    'الكليات الهندسية',
    'الكليات الطبية',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.symmetric(
              vertical: screenHieght(80), horizontal: screenWidth(15)),
          child: Column(children: [
            150.ph,
            CustomTextField(
              iconName: "ic_search.svg",
              prefixIconColor: AppColors.backform,
              fill: AppColors.backformtext,
              hinttext: tr("key_search"),
              mheight: 90,
              mwidth: 330,
            ),
            (screenHieght(40)).ph,
            CustomSlider(),
            CustomContainer(
                lable: tr("key_category"), borderColor: AppColors.hinttext),
            SizedBox(
              height: screenWidth(7),
              width: screenWidth(1),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                addAutomaticKeepAlives: true,
                addRepaintBoundaries: true,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: category.length,
                itemBuilder: (context, index) {
                  return Mycategory(
                    category: category[index],
                  );
                },
              ),
            ),
            customShip()
          ]),
        ),
      ],
    );
  }
}
