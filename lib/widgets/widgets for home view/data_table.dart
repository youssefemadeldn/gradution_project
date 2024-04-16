import 'package:flutter/material.dart';

class DataTable2 extends StatefulWidget {
  const DataTable2({super.key});

  @override
  State<DataTable2> createState() => _DataTable2State();
}

class _DataTable2State extends State<DataTable2> {
  bool? _checked1 = false;
  bool? _checked2 = false;
  bool? _checked3 = false;
  bool? _checked4 = false;
  bool? _checked5 = false;
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
          columnSpacing: 10,
          // dataRowMaxHeight: 2,
          columns: const [
            DataColumn(
              label: Text(''),
            ),
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
              label: Text('عدد الساعات'),
            ),
            DataColumn(
              label: Text('الدرجة العظمي'),
            ),
            DataColumn(
              label: Text('الدرجة الصغري'),
            ),
          ],
          rows: [
            DataRow(
              selected: false,
              cells: [
                DataCell(Checkbox(
                    value: _checked1,
                    onChanged: (bool? value) {
                      setState(() {
                        _checked1 = value;
                      });
                    })),
                const DataCell(Text('1')),
                const DataCell(Text('SC2X')),
                const DataCell(Text('2019')),
                const DataCell(Text('3')),
                const DataCell(Text('100')),
                const DataCell(Text('50')),
              ],
            ),
            DataRow(
              selected: false,
              cells: [
                DataCell(Checkbox(
                    value: _checked2,
                    onChanged: (bool? value) {
                      setState(() {
                        _checked2 = value;
                      });
                    })),
                const DataCell(Text('2')),
                const DataCell(Text('SC2X')),
                const DataCell(Text('2003')),
                const DataCell(Text('3')),
                const DataCell(Text('100')),
                const DataCell(Text('50')),
              ],
            ),
            DataRow(
              selected: false,
              cells: [
                DataCell(Checkbox(
                    value: _checked3,
                    onChanged: (bool? value) {
                      setState(() {
                        _checked3 = value;
                      });
                    })),
                const DataCell(Text('3')),
                const DataCell(Text('SC2X')),
                const DataCell(Text('2003')),
                const DataCell(Text('3')),
                const DataCell(Text('100')),
                const DataCell(Text('50')),
              ],
            ),
            DataRow(
              selected: false,
              cells: [
                DataCell(Checkbox(
                    value: _checked4,
                    onChanged: (bool? value) {
                      setState(() {
                        _checked4 = value;
                      });
                    })),
                const DataCell(Text('4')),
                const DataCell(Text('SC2X')),
                const DataCell(Text('2003')),
                const DataCell(Text('3')),
                const DataCell(Text('100')),
                const DataCell(Text('50')),
              ],
            ),
            DataRow(
              selected: false,
              cells: [
                DataCell(Checkbox(
                    value: _checked5,
                    onChanged: (bool? value) {
                      setState(() {
                        _checked5 = value;
                      });
                    })),
                const DataCell(Text('5')),
                const DataCell(Text('SC2X')),
                const DataCell(Text('2003')),
                const DataCell(Text('3')),
                const DataCell(Text('100')),
                const DataCell(Text('50')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
