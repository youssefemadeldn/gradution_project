import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/custom_app_bar_widget.dart';
import 'package:flutter_application_1/core/widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      body: const PaymentDetailsViewBody(),
    );
  }
}
