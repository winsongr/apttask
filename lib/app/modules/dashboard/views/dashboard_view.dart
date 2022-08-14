import 'package:apttask/app/data/assets.dart';
import 'package:apttask/app/data/colors.dart';
import 'package:apttask/app/modules/competition/views/competition_view.dart';
import 'package:apttask/app/modules/home/views/home_view.dart';
import 'package:apttask/app/modules/profile/views/profile_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return SafeArea(
        child: Scaffold(
          body: IndexedStack(
            index: controller.tabIndex,
            children: [HomeView(), CompetitionView(), ProfileView()],
          ),
          extendBody: true,
          bottomNavigationBar: btmbar,
        ),
      );
    });
  }

  Widget get btmbar {
    return ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        child: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            selectedItemColor: CColour.pink,
            backgroundColor: const Color(0xffF5F5F5),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.collections_bookmark_outlined,
                ),
                label: 'Competition',
                
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Profile',
              ),
            ]));
  }
}
