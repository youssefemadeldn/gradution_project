import 'package:flutter/material.dart';

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
              label: Text('الدرجة '),
            ),
          ],
          rows: const [
            DataRow(
              selected: false,
              cells: [
                DataCell(Text('1')),
                DataCell(Text('SC2X')),
                DataCell(Text('IOT')),
                DataCell(Text('100')),
              ],
            ),
            DataRow(
              selected: false,
              cells: [
                DataCell(Text('2')),
                DataCell(Text('SC2X')),
                DataCell(Text('IOT')),
                DataCell(Text('100')),
              ],
            ),
            DataRow(
              selected: false,
              cells: [
                DataCell(Text('3')),
                DataCell(Text('SC2X')),
                DataCell(Text('IOT')),
                DataCell(Text('100')),
              ],
            ),
            DataRow(
              selected: false,
              cells: [
                DataCell(Text('4')),
                DataCell(Text('SC2X')),
                DataCell(Text('IOT')),
                DataCell(Text('100')),
              ],
            ),
            DataRow(
              selected: false,
              cells: [
                DataCell(Text('5')),
                DataCell(Text('SC2X')),
                DataCell(Text('IOT')),
                DataCell(Text('100')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
