import 'package:flutter/material.dart';
import 'package:flutter_application_1/checkout_features/checkout/stripe_widgets/custom_botton_bloc_consumer.dart';
import 'package:flutter_application_1/checkout_features/checkout/stripe_widgets/payment_methods_list_view.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16,
          ),
          PaymentMethodsListView(),
          SizedBox(
            height: 32,
          ),
          CustomButtonBlocConsumer(),
        ],
      ),
    );
  }
}
