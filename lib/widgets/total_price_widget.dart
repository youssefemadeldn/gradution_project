import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/styles.dart';

class TotalPriceWidget extends StatelessWidget {
  final String title, value;
  const TotalPriceWidget({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.style24,
        ),
        const Spacer(),
        Text(
          value,
          textAlign: TextAlign.center,
          style: Styles.style24,
        ),
      ],
    );
  }
}
