import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widgets%20for%20home%20view/Smart_service_card_widget.dart';

class ListViewOfSmartServiceCard extends StatelessWidget {
  const ListViewOfSmartServiceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
              cacheExtent: 100.0,
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
    );
  }
}