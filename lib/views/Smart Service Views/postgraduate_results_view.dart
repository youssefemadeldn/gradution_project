import 'package:flutter/material.dart';

import 'package:flutter_application_1/widgets/custom_appBar.dart';
import 'package:flutter_application_1/widgets/widgets%20for%20home%20view/postgradute_data_table.dart';

class PostgraduateResultsView extends StatelessWidget {
  static String id = 'PostgraduateResultsView';
  const PostgraduateResultsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: const Column(
        children: [
          SizedBox(
            height: 140,
          ),
          PostgraduateDataTable(),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
