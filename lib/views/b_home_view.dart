import 'package:flutter/material.dart';

import 'package:flutter_application_1/widgets/custom_appBar.dart';
import 'package:flutter_application_1/widgets/widgets%20for%20home%20view/cover.dart';
import 'package:flutter_application_1/widgets/widgets%20for%20home%20view/list_view_of_academic_programs.dart';
import 'package:flutter_application_1/widgets/widgets%20for%20home%20view/list_view_of_smart_service_card.dart';
import 'package:flutter_application_1/widgets/widgets%20for%20home%20view/text_divider.dart';

class HomeView extends StatelessWidget {
  static String id = 'HomeView';
  static int intId = 0;

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(milliseconds: 1000),
        // backgroundColor: Colors.white,
        destinations: const [
          NavigationDestination(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              label: 'Profile'),
          NavigationDestination(
              icon: Icon(
                Icons.notifications,
                size: 30,
              ),
              label: 'Notification'),
          NavigationDestination(
              icon: Icon(
                Icons.settings,
                size: 30,
              ),
              label: 'Setting'),
        ],
        selectedIndex: intId,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Cover(),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  TextDivider(
                    text: 'الخدمات الذكية',
                    indent: 220,
                    endIndent: 9,
                  ),
                  ListViewOfSmartServiceCard(),
                  SizedBox(
                    height: 20,
                  ),
                  TextDivider(
                    text: 'البرامج الأكاديمية',
                    indent: 195,
                    endIndent: 7,
                  ),
                  ListViewOfAcademicPrograms(),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              decoration: const BoxDecoration(
                  // color: kPrimaryColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
