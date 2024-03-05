import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_appBar.dart';

class HomeView extends StatelessWidget {
  static String id = 'HomeView';

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          const Positioned(
            top: 210,
            // bottom: 150,
            right: 8,
            child: Text(
              'الخدمات الذكية',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Image.asset(
            'assets/images/background-gradute1.png',
          ),
          const Positioned(
            // top: 0,
            bottom: 110,
            right: 5,
            child: Text(
              'الدراسات العليا',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            top: 80,
            // bottom: 150,
            right: 5,
            child: Text(
              '''كل مايحتاجه الطالب من مدخل واحد: تسجيل المقررات، دفع المصروفات
  منصة التعليم الإلكترونى، الجداول الدراسية، جداول الامتحانات، النتائج
               ''',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
