import 'package:flutter/material.dart';
import 'package:flutter_templete/main.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_form.dart';
import 'package:flutter_templete/ui/shared/utils.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController controllerSearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SvgPicture.asset("assets/images/shapeMaker.svg"),
              Row(
                children: [
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
          //CustomTextFormField(controller:controllerSearch , , fillColor: null, hintText: '', hintTextColor: null,)
        ],
      ),
    );
  }
}
