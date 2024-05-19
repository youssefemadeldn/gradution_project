import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/Smart%20Service%20Views/books_and_resource_materials.dart';
import 'package:flutter_application_1/views/Smart%20Service%20Views/exams_schedule_view.dart';
import 'package:flutter_application_1/views/Smart%20Service%20Views/postgraduate_results_view.dart';
import 'package:flutter_application_1/views/Smart%20Service%20Views/register_matrials_view.dart';
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
              children: [
                SmartServiceCard(
                  image: 'assets/images/1.png',
                  title: 'الإعلانات ومواعيد السمينارات',
                  onTap: () {},
                ),
                SmartServiceCard(
                  image: 'assets/images/2.png',
                  title: 'تسجيل نقطة بحث',
                  onTap: () {},
                ),
                SmartServiceCard(
                  image: 'assets/images/3.png',
                  title: '''تسجيل واختيار المواد''',
                  onTap: () {
                    Navigator.pushNamed(context, RegisterMartialsView.id);
                  },
                ),
                SmartServiceCard(
                  image: 'assets/images/4.png',
                  title: 'الكتب و مصارد المواد',
                  onTap: () {
                    Navigator.pushNamed(
                        context, BooksAndResourceMaterialsView.id);
                  },
                ),
                SmartServiceCard(
                  image: 'assets/images/5.png',
                  title: 'الدفع الإلكتروني',
                  onTap: () {},
                ),
                SmartServiceCard(
                  image: 'assets/images/6.png',
                  title: 'جداول الدراسة',
                  onTap: () {},
                ),
                SmartServiceCard(
                  image: 'assets/images/7.png',
                  title: 'جداول الامتحانات',
                  onTap: () {
                    Navigator.pushNamed(context, ExamsScheduleView.id);
                  },
                ),
                SmartServiceCard(
                  image: 'assets/images/8.png',
                  title: 'نتائج الدراسات العليا',
                  onTap: () {
                    Navigator.pushNamed(context, PostgraduateResultsView.id);
                  },
                ),
                SmartServiceCard(
                  image: 'assets/images/9.png',
                  title: 'chatbot',
                  onTap: () {},
                ),
                SmartServiceCard(
                  image: 'assets/images/10.png',
                  title: 'الاشعارات ومتابعة الطلاب',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
