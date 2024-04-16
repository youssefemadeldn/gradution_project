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
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const DataTable2(),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomButton(
                onTap: () {},
                text: 'Submit',
                color: kPrimaryColor,
                width: 100,
              ),
              const SizedBox(
                width: 5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
