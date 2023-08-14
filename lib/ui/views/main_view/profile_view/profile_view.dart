import 'package:flutter/material.dart';
import 'package:flutter_templete/main.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_container.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_paint_for_home.dart';
import 'package:flutter_svg/svg.dart';
import '../../../shared/colors.dart';
import '../../../shared/custom_widgets/custom_button.dart';
import '../../../shared/utils.dart';
import 'package:get/get.dart';

import '../../about_us_view/about_us_view.dart';
import '../../send_feed/send_feed.dart';
import '../../update_detailes_view/update_detailes_view.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomPaintHome(
            lable: 'تعديل الملف الشخصي',
            svgName: 'ic_user',
            svgHieght: screenHieght(20),
            svgWidth: screenWidth(20),
            svgColor: AppColors.mainWhiteColor,
          ),
          (screenWidth(10)).ph,
          Container(
            child: SvgPicture.asset(
              'assets/images/user2.svg',
              fit: BoxFit.fitHeight,color: AppColors.mainskycolor,
            ),
            height: screenHieght(6.5),
            width: screenWidth(3.2),
            decoration: BoxDecoration(border:Border.all(width: 4,color: AppColors.mainskycolor),
            borderRadius: BorderRadius.circular(100)),

          ),
          Text('اسم المستخدم',style: TextStyle(fontSize: 18,color: AppColors.mainpurple1),),
          (screenWidth(15)).ph,
          InkWell( onTap:(){Get.to(UpdateDetailes());},
            child: CustomContainer(
                svgColor: AppColors.mainpurple1,
                svgName: 'ic_edit',
                lableColor: AppColors.mainpurple1,
                lable: 'المعلومات الشخصية',
                borderColor: AppColors.mainpurple1),
          ),
          (screenWidth(20)).ph,
          InkWell( onTap: (){
            Get.to(SendFeed());
          },
            child: CustomContainer(
                svgColor: AppColors.mainskycolor,
                svgName: 'ic_send',
                lableColor: AppColors.mainskycolor,
                lable: 'أرسل شكاوى',
                borderColor: AppColors.mainskycolor),
          ),
          (screenWidth(20)).ph,
          InkWell(onTap:  (){Get.to(AboutUsView());},
            child: CustomContainer(
                svgColor: AppColors.hinttext,
                svgName: 'ic_info',
                lableColor: AppColors.hinttext,
                lable: 'عن التطبيق',
                borderColor: AppColors.hinttext),
          ),
          (screenWidth(10)).ph,
          CustomButton(
              backgroundColor: AppColors.mainpurple1,
              text: 'تسجيل الخروج',
              onPressed: () {}),
        ],
      ),
    );
  }
}
