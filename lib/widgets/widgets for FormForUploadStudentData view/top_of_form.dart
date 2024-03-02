import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

class TopOfForm extends StatelessWidget {
  const TopOfForm({
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
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('بيانات الطالب'),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.person),
        ],
      ),
    );
  }
}
