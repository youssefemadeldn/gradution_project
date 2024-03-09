import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

class TextDivider extends StatelessWidget {
  final String text;
  final double indent;
  final double endIndent;
  const TextDivider(
      {super.key,
      required this.text,
      required this.indent,
      required this.endIndent});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: const Alignment(.94, 0),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Divider(
          height: 7,
          thickness: 10,
          color: kPrimaryColor,
          indent: indent,
          endIndent: endIndent,
        ),
      ],
    );
  }
}
