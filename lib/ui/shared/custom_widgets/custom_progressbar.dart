import 'package:flutter/material.dart';
import 'package:flutter_templete/ui/shared/colors.dart';

class MyProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Bar Example'),
      ),
      body: Center(
        child: LinearProgressIndicator(
          value: 0.5,
          backgroundColor: AppColors.mainpurple1,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
        ),
      ),
    );
  }
}
