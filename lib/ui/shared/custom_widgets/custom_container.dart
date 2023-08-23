import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../colors.dart';
import '../utils.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer(
      {this.svgName,
      required this.lable,
      this.svgWidth,
      this.svgHieght,
      this.svgColor,
      this.lableColor,
      required this.borderColor});

  final String? svgName;

  final String? lable;
  final double? svgWidth;
  final double? svgHieght;

  final Color? lableColor;

  final Color? svgColor;

  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: screenWidth(0.9),
        height: screenHieght(14),
        decoration: BoxDecoration(
            border: Border(right: BorderSide(width: 3.0, color: borderColor))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 6, 0),
              child: Text(
                '$lable',
                style: TextStyle(fontSize: 18, color: lableColor),
              ),
            ),
            SvgPicture.asset(
              'assets/images/${svgName}.svg',
              width: svgWidth,
              height: svgHieght,
              color: svgColor,
            )
          ],
        ),
      ),
    );
  }
}
