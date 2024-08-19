// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskmgr/Constants/colors.dart';
import 'package:taskmgr/Controller/home_controller.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  // Instantiate the controller
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: homeController.selectedIndex.value,
          onTap: (index) {
            homeController.changeIndex(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: homeController.selectedIndex.value == 0
                    ? MyColors.primaryColor
                    : Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.folder_open,
                color: homeController.selectedIndex.value == 1
                    ? MyColors.primaryColor
                    : Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepPurple,
                ),
                child: const Icon(Icons.add, color: Colors.white),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_outline,
                color: homeController.selectedIndex.value == 3
                    ? MyColors.primaryColor
                    : Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: homeController.selectedIndex.value == 4
                    ? MyColors.primaryColor
                    : Colors.grey,
              ),
              label: '',
            ),
          ],
        ));
  }
}
