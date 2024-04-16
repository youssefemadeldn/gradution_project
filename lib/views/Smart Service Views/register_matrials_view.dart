import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/widgets/custom_button.dart';
import 'package:flutter_application_1/widgets/custom_appBar.dart';
import 'package:flutter_application_1/widgets/widgets%20for%20home%20view/data_table.dart';

class RegisterMartialsView extends StatelessWidget {
  static String id = 'RegisterMartialsView';
  const RegisterMartialsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: const Column(
        children: [
          SizedBox(
            height: 30,
          ),
          DataTable2(),
          CustomButton(
            text: 'Submit',
            color: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
