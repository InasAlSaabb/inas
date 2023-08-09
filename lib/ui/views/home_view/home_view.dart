import 'package:flutter/material.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SvgPicture.asset("assets/images/shapeMaker.svg"),
              Row(
                children: [
                  Icon(Icons.home),
                  Text(
                    "الرئيسية",
                    style: TextStyle(color: AppColors.mainWhiteColor),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
