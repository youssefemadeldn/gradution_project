import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/widgets/avatar.dart';
import 'package:flutter_application_1/widgets/custom_text_form_field.dart';
import 'package:flutter_application_1/widgets/student_data.dart';

class BodyOfForm extends StatelessWidget {
  const BodyOfForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 600,
      decoration: const BoxDecoration(
        color: Color(0XFFD0D3D7),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 24),
                child: CustomAvatar(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  //
                  const Text(':الرقم القومي'),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                      width: 200, height: 20, child: CustomTextFormField()),
                  //
                  const Text(':الديانة '),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                      width: 200, height: 20, child: CustomTextFormField()),
                  //
                  const Text(':النوع '),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                      width: 200, height: 20, child: CustomTextFormField()),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Text('اسم الطالب بالغة العربية'),
          const StudentData(),
          const SizedBox(
            height: 10,
          ),
          const Text('اسم الطالب بالغة الانجليزية'),
          const StudentData(),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
