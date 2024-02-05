import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/checkout/presentation/views/my_cart_view.dart';

void main() {
  runApp(const CheckOutApp());
}

class CheckOutApp extends StatelessWidget {
  const CheckOutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyCartView(),
    );
  }
}

// 7. Create account => https://dashboard.stripe.com/register

// 1- create payment intent (amount , currency)