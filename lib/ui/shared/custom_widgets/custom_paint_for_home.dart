
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
    return CustomPaint(
      size: Size(screenWidth(1), screenHieght(20)),
      painter: RPSCustomPainter(),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, screenHieght(14), screenWidth(15), 0),
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

    //     padding: const EdgeInsets.all(0),
    //     child: Stack(
    //     children: [
    //       SvgPicture.asset(
    //         'assets/images/shapeMaker.svg',
    //
    //       ),
    //       Positioned( top: screenHieght(20),
    //         right:screenWidth(13) ,
    //         child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             SvgPicture.asset(
    //               'assets/images/${svgName}.svg',
    //               width: svgWidth,
    //               height: svgHieght,
    //               color: AppColors.mainWhiteColor,
    //             ),
    //             SizedBox(
    //               height: screenHieght(20),
    //             ),
    //             Text(
    //               '${lable}',
    //               style: TextStyle(color: AppColors.mainWhiteColor),
    //             )
    //           ],
    //         ),
    //       )
    //     ],
    // ),
    //   );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 129.437);
    path_0.cubicTo(40.9264, 89.4128, 132.639, 97.5311, 193.11, 102.884);
    path_0.lineTo(193.112, 102.884);
    path_0.cubicTo(194.891, 103.042, 196.643, 103.197, 198.366, 103.348);
    path_0.cubicTo(214.838, 104.796, 230.495, 106.388, 245.321, 107.896);
    path_0.cubicTo(316.899, 115.175, 369.087, 120.483, 400, 97.9876);
    path_0.lineTo(400, 0);
    path_0.lineTo(0, 0);
    path_0.lineTo(0, 129.437);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff6F2877).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
