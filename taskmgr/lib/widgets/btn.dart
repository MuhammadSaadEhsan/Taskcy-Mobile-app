import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget btn(text,double width,double heights,func) {
  return ElevatedButton(
    onPressed: () {
      // Get.to(OnBordingOne());
      func();
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromRGBO(117, 110, 243, 1),
      shadowColor: Colors.deepPurpleAccent, // Shadow color
      elevation: 10, // Elevation
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13), // Rounded edges
      ),
      padding:
          EdgeInsets.symmetric(horizontal: width, vertical: heights), // Padding
    ),
    child: Text(
      // "Get Started",
      text,
      style: GoogleFonts.lato(
        textStyle: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
      ),
    ),
  );
}
