import 'package:flutter/material.dart';
import 'package:flutter_application_1/checkout_features/checkout/data/repos/checkout_repo_impl.dart';
import 'package:flutter_application_1/checkout_features/checkout/presentation/manager/cubit/stripe_payment_cubit.dart';
import 'package:flutter_application_1/checkout_features/checkout/stripe_widgets/payment_method_bottom_sheet.dart';
import 'package:flutter_application_1/widgets/custom_appBar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentView extends StatefulWidget {
  static const String id = 'PaymentView';
  final double amount;
  const PaymentView({super.key, this.amount = 0});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Amount to Pay: \$${widget.amount.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    context: context,
                    builder: (context) {
                      return BlocProvider(
                        create: (context) => StripePaymentCubit(CheckoutImpl()),
                        child: const PaymentMethodBottomSheet(),
                      );
                    });
              },
              child: const Text('Pay Now'),
            ),
          ],
        ),
      ),
    );
  }
}
