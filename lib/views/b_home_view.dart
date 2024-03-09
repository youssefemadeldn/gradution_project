import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/widgets/custom_appBar.dart';
import 'package:flutter_application_1/widgets/widgets%20for%20home%20view/Smart_service_card_widget.dart';
import 'package:flutter_application_1/widgets/widgets%20for%20home%20view/list_view_of_academic_programs.dart';
import 'package:flutter_application_1/widgets/widgets%20for%20home%20view/list_view_of_smart_service_card.dart';
import 'package:flutter_application_1/widgets/widgets%20for%20home%20view/text_divider.dart';

class HomeView extends StatelessWidget {
  static String id = 'HomeView';

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 190,
            decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage('assets/images/background-gradute1.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: const Align(
              alignment: Alignment(1, -.8),
              child: Column(
                children: [
                  Text(
                    '''

                        الدراسات العليا''',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '''كل مايحتاجه الطالب من مدخل واحد: تسجيل المقررات، دفع المصروفات   
  منصة التعليم الإلكترونى، الجداول الدراسية، جداول الامتحانات، النتائج
               ''',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const TextDivider(
            text: 'الخدمات الذكية',
            indent: 235,
            endIndent: 10,
          ),
          const ListViewOfSmartServiceCard(),
          const TextDivider(
            text: 'البرامج الأكاديمية',
            indent: 215,
            endIndent: 10,
          ),
          const ListViewOfAcademicPrograms(),
        ],
      ),
    );
  }
}
