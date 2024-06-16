import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/checkout_features/checkout/data/models/payment_intent_input_model.dart';
import 'package:flutter_application_1/checkout_features/checkout/errors/failures.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
