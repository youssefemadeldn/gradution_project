import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

class BottomOfForm extends StatelessWidget {
  const BottomOfForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 38,
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('الرجوع الي شاشة الانظمة | الخروج'),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.person),
        ],
      ),
    );
  }
}
