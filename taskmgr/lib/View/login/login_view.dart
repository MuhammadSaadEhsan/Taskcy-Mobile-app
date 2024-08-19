// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmgr/Constants/colors.dart';
import 'package:taskmgr/Controller/home_controller.dart';
import 'package:taskmgr/View/signup/signup_view.dart';
import 'package:taskmgr/View/start/start_view.dart';
import 'package:taskmgr/widgets/btn.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<HomeController>(builder: (c) {
          return Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 35),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      child:
                          SizedBox(height: 50, child: Image.asset('Assets/backbtn.png')),
                      onTap: () {
                        Get.to(StartView());
                      },
                    ),
                    const SizedBox(
                      width: 65,
                    ),
                    const Text(
                      "Sing In",
                      style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 240),
                  child: SizedBox(
                      height: 45, child: Image.asset('Assets/dots1.png')),
                ),
                Row(
                  children: [
                    Text(
                      "Welcome Back",
                      style: GoogleFonts.aBeeZee(
                          textStyle:const TextStyle(fontWeight: FontWeight.w700, fontSize: 27),
                    ),)
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  children: [
                    Text(
                      "Please Inter your email address",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: Colors.grey),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      "and password for Login",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                // TextField(
                //   decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),hintText: "Enter your name"),
                // )
                CustomTextField(
                  hintText: "Enter your email",
                  textColor: MyColors.getBackgroundColor(context),
                  filled: false,
                  borderColor: Colors.grey.shade300,
                  hintTextColor: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomTextField(
                  textColor: MyColors.getBackgroundColor(context),
                  hintText: "Enter your password",
                  filled: false,
                  borderColor: Colors.grey.shade300,
                  hintTextColor: Colors.grey,
                  fontWeight: FontWeight.w500,
                  obscure: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 140, top: 10),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            // color: Colors.black
                            color: MyColors.getBackgroundColor(context)
                            ),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                btn("Sign In", 122, 18, () {}),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Sign In with",
                  style: TextStyle(
                      color: Color.fromARGB(255, 116, 115, 115),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 69,
                    ),
                    SizedBox(height: 65, child: Image.asset("Assets/apple.png")),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(height: 65, child: Image.asset("Assets/google.png")),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 40,
                    ),
                    const Text(
                      "Don't registered yet?",
                      style: TextStyle(
                          color: Color.fromARGB(255, 116, 115, 115),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                      child: Text("Sign Up",
                          style: TextStyle(
                              color: MyColors.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                      onPressed: () {
                        Get.to(SignUpView());
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool filled;
  final Color? fillColor;
  final Color borderColor;
  final Color textColor;
  final Color hintTextColor;
  final FontWeight fontWeight;
  final bool obscure;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.borderColor,
    this.filled = false,
    this.fillColor,
    this.textColor = Colors.black,
    this.hintTextColor = Colors.grey,
    this.fontWeight = FontWeight.normal,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: hintTextColor),
        filled: filled,
        fillColor: fillColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: borderColor, width: 2.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: MyColors.primaryColor, width: 2.0),
        ),
        contentPadding: const EdgeInsets.only(left: 25, top: 20, bottom: 20),
      ),
      style: TextStyle(color: textColor, fontWeight: fontWeight),
    );
  }
}
