import 'package:flutter/material.dart';
import 'package:flutter_templete/ui/views/home_view/home_view_controller.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  TextEditingController controllerSearch = TextEditingController();
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("home"));
  }
}
