import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskmgr/View/home/home_view.dart';
// import 'package:taskmgr/View/login/login_view.dart';
// import 'package:taskmgr/View/home/home_view.dart';
// import 'package:taskmgr/View/login/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        // primarySwatch: Colors.purple,
        primarySwatch: Colors.blue,
        brightness: Brightness.light, // Define the default theme here
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark, // Define dark theme here
      ),
      themeMode: ThemeMode.system, // Use system theme
      debugShowCheckedModeBanner: false,
      // home: StartView(),
      home: HomeView(),
      // home: LoginView(),
    );
  }
}

