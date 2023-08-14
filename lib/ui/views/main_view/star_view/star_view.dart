import 'package:flutter/material.dart';

class StarView extends StatefulWidget {
  const StarView({super.key});

  @override
  State<StarView> createState() => _StarViewState();
}

class _StarViewState extends State<StarView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text("Star")],
    );
  }
}
