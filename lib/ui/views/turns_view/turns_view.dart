import 'package:flutter/material.dart';
import 'package:flutter_templete/main.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_paint_for_home.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_turn.dart';
import 'package:flutter_templete/ui/shared/utils.dart';

class TurnsView extends StatefulWidget {
  const TurnsView({super.key});

  @override
  State<TurnsView> createState() => _TurnsViewState();
}

class _TurnsViewState extends State<TurnsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          CustomPaintHome(
            lable: 'الدورات',
            svgName: 'ic_back',
            svgHieght: null,
            svgWidth: screenWidth(20),
            svgColor: AppColors.hinttext,
          ),
          screenWidth(3).ph,
          CustomTurn(
            text: "",
            backgroundcolor: AppColors.mainpurple2,
          ),
          screenWidth(10).ph,
          CustomTurn(
            text: "",
            backgroundcolor: AppColors.mainblue,
          ),
          screenWidth(10).ph,
          CustomTurn(
            text: "",
            backgroundcolor: AppColors.mainpurple2,
          ),
          screenWidth(10).ph,
          CustomTurn(
            text: "",
            backgroundcolor: AppColors.mainblue,
          ),
        ],
      ),
    ));
  }
}
