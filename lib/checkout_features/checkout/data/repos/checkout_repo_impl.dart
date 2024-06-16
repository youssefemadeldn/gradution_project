import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/checkout_features/checkout/data/models/payment_intent_input_model.dart';
import 'package:flutter_application_1/checkout_features/checkout/data/repos/checkout_repo.dart';
import 'package:flutter_application_1/checkout_features/checkout/errors/failures.dart';
import 'package:flutter_application_1/checkout_features/utils/stripe_services.dart';

class CheckoutImpl extends CheckoutRepo {
  final StripeServices stripeServices = StripeServices();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeServices.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
