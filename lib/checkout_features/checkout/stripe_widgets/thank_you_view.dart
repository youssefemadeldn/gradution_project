import 'package:flutter/material.dart';
import 'package:flutter_application_1/checkout_features/checkout/stripe_widgets/thank_you_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: buildAppBar(),
      body: ThankYouBody(),
    );
  }
}
