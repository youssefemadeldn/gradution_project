import 'package:flutter/material.dart';

import 'package:flutter_application_1/Features/checkout/presentation/views/payment_details_view.dart';
import 'package:flutter_application_1/views/form_for_upload_student_data_view.dart';
import 'package:flutter_application_1/views/login_view.dart';

void main() {
  runApp(const CheckOutApp());
}

class CheckOutApp extends StatelessWidget {
  const CheckOutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        PaymentDetailsView.id: (context) => PaymentDetailsView(),
        LoginPage.id: (context) => LoginPage(),
        FormForUploadStudentData.id: (context) => FormForUploadStudentData(),
      },
      initialRoute: LoginPage.id,
    );
  }
}

// 7. Create account => https://dashboard.stripe.com/register

// 1- create payment intent (amount , currency)