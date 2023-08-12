import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_templete/main.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templete/ui/shared/utils.dart';

import '../../shared/colors.dart';
import '../../shared/custom_widgets/custom_button.dart';
import '../../shared/custom_widgets/custom_form.dart';
class SendFeed extends StatefulWidget {
  SendFeed({Key? key}) : super(key: key);

  @override
  State<SendFeed> createState() => _SendFeedState();
}

class _SendFeedState extends State<SendFeed> {
  var feedBack=TextEditingController();
GlobalKey _formKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: ListView(children: [
          (screenWidth(3)).ph,
      Center(child: CustomText(text: 'Overlay Send feed',textColor: AppColors.mainskycolor,fontSize: 30,)),
      Padding(
        padding: EdgeInsets.all(screenWidth(15)),
        child: Container(width: screenWidth(5),height: screenHieght(2.5),decoration: BoxDecoration( border:Border.all(width: 1,color: AppColors.mainskycolor) ),child: Column(
          children: [
        SvgPicture.asset(
        'assets/images/send feed back.svg',height: screenWidth(3),),
            CustomTextField(controller:feedBack , mheight: screenHieght(2), mwidth: screenWidth(1.4)),
            Padding(
              padding:  EdgeInsets.fromLTRB( screenWidth(15), screenWidth(20),screenWidth(15),screenWidth(30),),
              child: CustomButton(
                  backgroundColor: AppColors.mainpurple1,
                 text: 'ارسل ',
                  onPressed: () {
                  }),
            ),
          ],
        )),
      )
      ],),
    ),);
  }
}
