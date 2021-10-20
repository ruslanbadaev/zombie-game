import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zombie_game/utils/colors.dart';

import 'controller.dart';

class BottomNavBar extends StatelessWidget {
  // final BottomNavBarController controller = Get.find();

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavBarController>(
        init: BottomNavBarController(),
        builder: (controller) {
          return Obx(
            () => BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'News',
                  backgroundColor: Colors.red,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.business),
                  label: 'Map',
                  backgroundColor: Colors.green,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.face),
                  label: 'Statistic',
                  backgroundColor: Colors.yellow,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.school),
                  label: 'Shop',
                  backgroundColor: Colors.purple,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                  backgroundColor: Colors.pink,
                ),
              ],
              currentIndex: controller.selectedIndex,
              selectedItemColor: Colors.amber[800],
              onTap: (int index) => controller.setSelectedIndex = index,
            ),
          );
        });
  }
}
