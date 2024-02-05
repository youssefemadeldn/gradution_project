import 'package:flutter/material.dart';

import 'package:flutter_application_1/Features/checkout/presentation/views/payment_details_view.dart';

void main() {
  runApp(const CheckOutApp());
}

class CheckOutApp extends StatelessWidget {
  const CheckOutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        PaymentDetailsView.id: (context) => PaymentDetailsView(),
      },
      initialRoute: PaymentDetailsView.id,
    );
  }
}

// 7. Create account => https://dashboard.stripe.com/register

// 1- create payment intent (amount , currency)