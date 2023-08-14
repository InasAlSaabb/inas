import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_templete/main.dart';
import 'package:flutter_templete/ui/shared/utils.dart';

class CustomTurn extends StatefulWidget {
  const CustomTurn({super.key, required this.text, this.backgroundcolor});
  final String text;
  final Color? backgroundcolor;
  @override
  State<CustomTurn> createState() => _CustomTurnState();
}

class _CustomTurnState extends State<CustomTurn> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth(15)),
      child: Container(
        width: screenWidth(1),
        height: screenHieght(17),
        decoration: BoxDecoration(
            color: widget.backgroundcolor,
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/images/ic_book.svg",
              width: screenWidth(10),
            ),
            Text("${widget.text}"),
            screenWidth(10).pw,
            SvgPicture.asset(
              "assets/images/ic_arrow.svg",
            )
          ],
        ),
      ),
    );
  }
}
