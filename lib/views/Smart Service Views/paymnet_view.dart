import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_appBar.dart';

class PaymentView extends StatelessWidget {
  static const String id = 'PaymentView';
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: const Center(child: Text('payment')),
    );
  }
}
