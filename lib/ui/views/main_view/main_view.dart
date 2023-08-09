import 'package:flutter/material.dart';
import 'package:flutter_templete/core/enums/bottom_Navigation.dart';
import 'package:flutter_templete/ui/views/home_view/home_view.dart';
import 'package:flutter_templete/ui/views/main_view/main_view_widgets/bottom_navigation_widget.dart';
import 'package:get/get.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  PageController controller = PageController(initialPage: 1);
  BottomNavigationEnum selected = BottomNavigationEnum.HOME;
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  //maincontroller controller = Get.put(maincontroller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: key,
      bottomNavigationBar: BottomNavigationWidget(
        navitm: selected,
        ontap: (select, pagenumber) {
          controller.jumpToPage(pagenumber);

          setState(() {
            selected = select;
          });
        },
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: [HomeView()],
      ),
    ));
  }
}
