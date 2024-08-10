import 'package:dartz/dartz.dart';
import 'package:payment_app/core/errors/failuer.dart';
import 'package:payment_app/core/utils/stripe_services.dart';
import 'package:payment_app/feat/cheeckout/data/models/payment_required_model.dart';
import 'package:payment_app/feat/cheeckout/data/repository/checkout_repo.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  final StripeServices stripeServices = StripeServices();

  @override
  Future<Either<FailuerClass, void>> makePayment(
      {required PaymentRequiredModel paymentRequiredModel}) async {
    try {
      var result =
          await stripeServices.makeIntndentPayment(paymentRequiredModel);
      return Right(result);
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }
}
