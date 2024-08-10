import 'package:dartz/dartz.dart';
import 'package:payment_app/core/errors/failuer.dart';
import 'package:payment_app/feat/cheeckout/data/models/payment_required_model.dart';

abstract class CheckoutRepo {
  Future<Either<FailuerClass, void>> makePayment(
      {required PaymentRequiredModel paymentRequiredModel});
}
