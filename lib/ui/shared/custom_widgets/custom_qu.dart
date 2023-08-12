import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomQu extends StatefulWidget {
  const CustomQu({super.key});

  @override
  State<CustomQu> createState() => _CustomQuState();
}

class _CustomQuState extends State<CustomQu> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.circle),
            ),
            Text(""),
          ],
        ));
  }
}
