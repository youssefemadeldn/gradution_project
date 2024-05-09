import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_appBar.dart';
import 'package:flutter_application_1/widgets/widgets%20for%20home%20view/books_and_materials_datatable.dart';

class BooksAndResourceMaterialsView extends StatelessWidget {
  static String id = 'BooksAndResourceMaterialsView';
  const BooksAndResourceMaterialsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: const Column(
        children: [
          SizedBox(
            height: 140,
          ),
          BooksAndResourceMaterialsDataTable(),
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
