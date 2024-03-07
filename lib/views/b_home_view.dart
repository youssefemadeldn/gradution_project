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
          Row(
            // after smart services
            children: [
              Expanded(
                child: SizedBox(
                  height: 170,
                  // width: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    // reverse: true,
                    // physics: NeverScrollableScrollPhysics(),
                    // cacheExtent: 100.0,
                    children: const [
                      SmartServiceCard(
                        image: 'assets/images/1.png',
                        title: 'الإعلانات ومواعيد السمينارات',
                      ),
                      SmartServiceCard(
                        image: 'assets/images/2.png',
                        title: '''            تسجيل نقطة بحث
                (رفع الفكرة)          ''',
                      ),
                      SmartServiceCard(
                        image: 'assets/images/3.png',
                        title: '''تسجيل واختيار المواد''',
                      ),
                      SmartServiceCard(
                        image: 'assets/images/4.png',
                        title: 'التقدم للدراسات العليا',
                      ),
                      SmartServiceCard(
                        image: 'assets/images/5.png',
                        title: 'الدفع الإلكتروني',
                      ),
                      SmartServiceCard(
                        image: 'assets/images/6.png',
                        title: 'جداول الدراسة',
                      ),
                      SmartServiceCard(
                        image: 'assets/images/7.png',
                        title: 'جداول الامتحانات',
                      ),
                      SmartServiceCard(
                        image: 'assets/images/8.png',
                        title: 'نتائج الدراسات العليا',
                      ),
                      SmartServiceCard(
                        image: 'assets/images/9.png',
                        title: 'chatbot',
                      ),
                      SmartServiceCard(
                        image: 'assets/images/10.png',
                        title: 'الاشعارات ومتابعة الطلاب',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
