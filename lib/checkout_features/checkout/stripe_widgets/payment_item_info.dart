import 'package:flutter/material.dart';
import 'package:flutter_application_1/checkout_features/utils/styles.dart';

class PaymentItemInfo extends StatelessWidget {
  final String title, value;
  const PaymentItemInfo({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.style18,
        ),
        Text(
          value,
          textAlign: TextAlign.center,
          style: Styles.styleBold18,
        ),
      ],
    );
  }
}
