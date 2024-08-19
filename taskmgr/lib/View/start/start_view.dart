// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmgr/Constants/colors.dart';
import 'package:taskmgr/Controller/home_controller.dart';
import 'package:taskmgr/View/onBording/on_bording1_view.dart';
import 'package:taskmgr/widgets/btn.dart';
import 'package:taskmgr/widgets/design.dart';
// import 'google_fonts';

class StartView extends StatelessWidget {
  StartView({super.key});

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    // Get the height of the screen
    double screenHeight = MediaQuery.of(context).size.height;
    print(screenHeight);

    // Calculate the height of the white box as a percentage of the screen height
    double whiteBoxHeight = screenHeight * 0.509; // 35% of the screen height
    if (screenHeight == 740) {
      whiteBoxHeight = screenHeight * 0.509;
    } else if (screenHeight == 896) {
      whiteBoxHeight = screenHeight * 0.5325;
    }

    Color backgroundColor = Theme.of(context).brightness == Brightness.light
        ? Colors.white
        : Colors.black;
    Color taskcyColor = Theme.of(context).brightness == Brightness.light
        ? MyColors.primaryColor
        : Colors.white;
    Color textColor = Theme.of(context).brightness == Brightness.light
        ? Colors.black
        : MyColors.primaryColor;

    return Scaffold(
      // backgroundColor: backgroundColor,
      backgroundColor: Colors.white,
      body: GetBuilder<HomeController>(builder: (c) {
        return Column(
          children: [
            Image.asset("Assets/home.png"),
            Stack(children: [
              Image.asset('Assets/jugar2.png'),
              Container(
                // height: 350,
                height: whiteBoxHeight,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  // color: Colors.white,
                  color: backgroundColor,
                ),
              ),
              //design
              design1(),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Taskcy",
                          style: GoogleFonts.pollerOne(
                            textStyle: TextStyle(
                                // color: Color.fromRGBO(117, 110, 243, 1),
                                color: taskcyColor,
                                fontSize: 46),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Padding(
                  // padding: const EdgeInsets.only(top: 5),
                  // child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Building Better\n   Workplaces",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              color: textColor,
                              // color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 32),
                        ),
                      ),
                    ],
                    // ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Create a unique emotional story that\n         describes better than words",
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  btn("Get Started",75,20,() {
                    Get.to(OnBordingOne());
                  })
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Get.to(OnBordingOne());                    },
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: const Color.fromRGBO(117, 110, 243, 1),
                  //     shadowColor: Colors.deepPurpleAccent, // Shadow color
                  //     elevation: 10, // Elevation
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius:
                  //           BorderRadius.circular(13), // Rounded edges
                  //     ),
                  //     padding: const EdgeInsets.symmetric(
                  //         horizontal: 75, vertical: 20), // Padding
                  //   ),
                  //   child: Text(
                  //     "Get Started",
                  //     style: GoogleFonts.lato(
                  //       textStyle: const TextStyle(
                  //           color: Colors.white,
                  //           fontWeight: FontWeight.w900,
                  //           fontSize: 20),
                  //     ),
                  //   ),
                  // )
                ],
              )
            ]),
          ],
        );
      }),
    );
  }
}
