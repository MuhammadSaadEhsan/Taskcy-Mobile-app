// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmgr/Constants/bordingData.dart';
import 'package:taskmgr/Constants/colors.dart';
import 'package:taskmgr/Controller/home_controller.dart';
import 'package:taskmgr/View/login/login_view.dart';
import 'package:taskmgr/View/onBording/on_bording2_view.dart';
import 'package:taskmgr/View/onBording/on_bording3_view.dart';
import 'package:taskmgr/widgets/design.dart';

class OnBordingScreen extends StatelessWidget {
  // final String myImage;
  // required this.nextScreen,
  // final String extraText;
  final int index;
  // final Widget nextScreen;

  OnBordingScreen({
    // required this.myImage,
    // required this.extraText,
    required this.index,
    super.key,
  });

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (c) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 20),
              child: Image.asset(
                "${BordingData.myData[index][0]}",
              ),
            ),
            // const SizedBox(height: 42,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Task Management",
                        style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(
                            color: MyColors.primaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        // "Let's create a",
                        "${BordingData.myData[index][1]}",
                        style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(
                            color:MyColors.getBackgroundColor(context),
                            // color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 34,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "${BordingData.myData[index][2]}",
                            // extraText,
                            style: GoogleFonts.aBeeZee(
                              textStyle: TextStyle(
                                // color:MyColors.getBackgroundColor(context),
                                color: MyColors.primaryColor,
                                fontWeight: FontWeight.w900,
                                fontSize: 34,
                              ),
                            ),
                          ),
                          Text(
                            // " for your",
                            "${BordingData.myData[index][3]}",
                            style: GoogleFonts.aBeeZee(
                              textStyle: TextStyle(
                                // color: Colors.black,
                                color:MyColors.getBackgroundColor(context),
                                fontWeight: FontWeight.w500,
                                fontSize: 34,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "${BordingData.myData[index][4]}",
                        // "workflows.",
                        style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(
                            // color: Colors.black,
                            color:MyColors.getBackgroundColor(context),
                            fontWeight: FontWeight.w500,
                            fontSize: 34,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          design(index: index, widths: 25),
                        ],
                      ),
                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          Get.to(LoginView());
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(fontSize: 18, color: MyColors.getBackgroundColor(context)),
                        ),
                      ),
                      const SizedBox(height: 37),
                    ],
                  ),
                  Positioned(
                    bottom: -65,
                    right: -1,
                    child: InkWell(
                      child: SizedBox(
                        height: 280,
                        width: 100,
                        child: Image.asset('Assets/NextButton.png'),
                      ),
                      onTap: () {
                        // Get.to(nextScreen());
                        // var onbording = 'r';
                        print(index);
                        if (index == 0) {
                          Get.to(OnBordingTwo());
                        } else if (index == 1) {
                          Get.to(OnBordingThree());
                        } else if (index == 2) {
                          Get.to(LoginView());
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
