// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskmgr/Controller/home_controller.dart';
import 'package:taskmgr/widgets/onbording.dart';

class OnBordingOne extends StatelessWidget {
  OnBordingOne({super.key});

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(builder: (c){
        return OnBordingScreen(index: 0,);
      },),
    );
  }
}
