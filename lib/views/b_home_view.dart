import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/widgets/custom_appBar.dart';
import 'package:flutter_application_1/widgets/widgets%20for%20home%20view/Smart_service_card_widget.dart';

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
          const Align(
            alignment: Alignment(.8, 0),
            child: Text(
              'الخدمات الذكية',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const Divider(
            height: 7,
            thickness: 10,
            color: kPrimaryColor,
            indent: 217,
            endIndent: 28,
          ),
          const SmartServiceCard(),
        ],
      ),
    );
  }
}
