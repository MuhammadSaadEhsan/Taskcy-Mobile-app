// ignore_for_file: must_be_immutable

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmgr/Controller/home_controller.dart';
import 'package:taskmgr/widgets/btmNavigationBar.dart';
import 'package:taskmgr/widgets/card.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<HomeController>(builder: (c) {
        return Padding(
          padding: const EdgeInsets.only(left: 25,right: 25,top: 35),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 45,
                    child: Image.asset("Assets/home1.png")),
                  Text(c.formattedDate.value,style: const TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
                  SizedBox(height: 45,child: Image.asset("Assets/home2.png"))
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 200,top: 10),
                    child: SizedBox(
                        height: 45, child: Image.asset('Assets/dots1.png')),
                  ),
                  Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        "Let's make a\nhabits together 🙌",
                        style: GoogleFonts.aBeeZee(
                            textStyle:const TextStyle(fontWeight: FontWeight.w700, fontSize: 27),
                      ),),
                    )
                  ],
                ),
                  ]
              ),
              DesignCard(title: "Application design", subtitle: "UI design kit", avatarImages: const ['Assets/apple.png','Assets/backbtn.png','Assets/google.png','Assets/apple.png','Assets/backbtn.png',], currentProgress: 50, totalProgress: 80)
            ],
          ),
        );
      }),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
