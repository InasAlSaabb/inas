import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colors.dart';
import '../utils.dart';

class CustomPaintHome extends StatelessWidget {
  CustomPaintHome(
      {required this.svgName,
      required this.lable,
      required this.svgWidth,
      required this.svgHieght,
      this.svgColor});

  final String? svgName;

  final String? lable;

  final double? svgWidth;

  final double? svgHieght;
  final Color? svgColor;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RPSCustomPainter(),
      child: Container(
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: screenWidth(20),
        ),
        height: screenHieght(6),
        decoration: BoxDecoration(
          color: AppColors.mainpurple1,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/images/${svgName}.svg',
              width: svgWidth,
              height: svgHieght,
              color: svgColor,
            ),
            SizedBox(
              width: screenWidth(20),
            ),
            Text(
              '${lable}',
              style: TextStyle(color: AppColors.mainWhiteColor),
            )
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.9956692);
    path_0.cubicTo(
        size.width * 0.1023160,
        size.height * 0.6877908,
        size.width * 0.3315976,
        size.height * 0.7502392,
        size.width * 0.4827741,
        size.height * 0.7914154);
    path_0.cubicTo(
        size.width * 0.4872235,
        size.height * 0.7926231,
        size.width * 0.4916071,
        size.height * 0.7938231,
        size.width * 0.4959153,
        size.height * 0.7949846);
    path_0.cubicTo(
        size.width * 0.5370965,
        size.height * 0.8061231,
        size.width * 0.5762376,
        size.height * 0.8183692,
        size.width * 0.6133012,
        size.height * 0.8299692);
    path_0.cubicTo(
        size.width * 0.7922471,
        size.height * 0.8859615,
        size.width * 0.9227176,
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
