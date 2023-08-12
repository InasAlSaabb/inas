import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_templete/main.dart';
import 'package:flutter_templete/ui/shared/utils.dart';

class CustomTurn extends StatefulWidget {
  const CustomTurn({super.key, required this.text});
  final String text;
  @override
  State<CustomTurn> createState() => _CustomTurnState();
}

class _CustomTurnState extends State<CustomTurn> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/images/.svg"),
        Text("${widget.text}"),
        screenWidth(10).ph,
        SvgPicture.asset("assets/images/ic_arrow.svg")
      ],
    );
  }
}
