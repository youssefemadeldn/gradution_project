import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/widgets/custom_button.dart';
import 'package:http/http.dart';

class BooksAndResourceMaterialsDataTable extends StatefulWidget {
  const BooksAndResourceMaterialsDataTable({super.key});

  @override
  State<BooksAndResourceMaterialsDataTable> createState() =>
      _PostgraduateDataTableState();
}

class _PostgraduateDataTableState
    extends State<BooksAndResourceMaterialsDataTable> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Center(
        child: DataTable(
          showBottomBorder: true,

          decoration: const BoxDecoration(
              // color: kPrimaryColor,
              ),
          // columnSpacing: 10,
          // dataRowMaxHeight: 2,
          columns: const [
            DataColumn(
              label: Text('ID'),
            ),
            DataColumn(
              label: Text('كود المادة'),
            ),
            DataColumn(
              label: Text('اسم المادة'),
            ),
            DataColumn(
              label: Text('المصادر '),
            ),
          ],
          rows: [
            DataRow(
              selected: false,
              cells: [
                const DataCell(Text('1')),
                const DataCell(Text('SC2X')),
                const DataCell(Text('IOT')),
                DataCell(SizedBox(
                  height: 40,
                  child: CustomButton(
                      text: 'تنزيل', color: kPrimaryColor, width: 60),
                )),
              ],
            ),
            DataRow(
              selected: false,
              cells: [
                const DataCell(Text('2')),
                const DataCell(Text('SC2X')),
                const DataCell(Text('IOT')),
                DataCell(SizedBox(
                  height: 40,
                  child: CustomButton(
                      text: 'تنزيل', color: kPrimaryColor, width: 60),
                )),
              ],
            ),
            DataRow(
              selected: false,
              cells: [
                const DataCell(Text('3')),
                const DataCell(Text('SC2X')),
                const DataCell(Text('IOT')),
                DataCell(SizedBox(
                  height: 40,
                  child: CustomButton(
                      text: 'تنزيل', color: kPrimaryColor, width: 60),
                )),
              ],
            ),
            DataRow(
              selected: false,
              cells: [
                const DataCell(Text('4')),
                const DataCell(Text('SC2X')),
                const DataCell(Text('IOT')),
                DataCell(SizedBox(
                  height: 40,
                  child: CustomButton(
                      text: 'تنزيل', color: kPrimaryColor, width: 60),
                )),
              ],
            ),
            DataRow(
              selected: false,
              cells: [
                const DataCell(Text('5')),
                const DataCell(Text('SC2X')),
                const DataCell(Text('IOT')),
                DataCell(SizedBox(
                  height: 40,
                  child: CustomButton(
                    text: 'تنزيل',
                    color: kPrimaryColor,
                    width: 60,
                  ),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void downloadFile() async {
    var time = DateTime.now().microsecondsSinceEpoch;
    var path = '/storage/emulated/0/Download/image-$time.jpg';
    var file = File(path);
    var res = await get(Uri.parse('https://source.unsplash.com/random'));
    file.writeAsBytes(res.bodyBytes);
  }
}
