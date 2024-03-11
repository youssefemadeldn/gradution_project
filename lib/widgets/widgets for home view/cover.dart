import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
  const Cover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
              منصة التعليم الإلكترونى، الجداول الدراسية، النتائج
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
    );
  }
}
