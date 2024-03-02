import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_text_form_field.dart';

class StudentData extends StatelessWidget {
  const StudentData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 160,
      decoration: BoxDecoration(
        color: const Color(0XFFD0D3D7),
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 4, bottom: 4),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 200, height: 20, child: CustomTextFormField()),
              const Text('اسم الطالب'),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 200, height: 20, child: CustomTextFormField()),
              const Text('   اسم الاب'),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 200, height: 20, child: CustomTextFormField()),
              const Text('  اسم الجد'),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 200, height: 20, child: CustomTextFormField()),
              const Text('      اللقب '),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 200, height: 20, child: CustomTextFormField()),
              const Text('اسم بالكامل'),
            ],
          ),
        ]),
      ),
    );
  }
}
