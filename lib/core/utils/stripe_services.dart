import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/core/utils/api_services.dart';
import 'package:payment_app/core/utils/app_const.dart';
import 'package:payment_app/feat/cheeckout/data/models/payment_model/payment_model.dart';
import 'package:payment_app/feat/cheeckout/data/models/payment_required_model.dart';

class StripeServices {
  ApiServices apiServices = ApiServices();
  Future<PaymentModel> createIntndentPayment(
      PaymentRequiredModel paymentModel) async {
    var response = await apiServices.post(
        url: "https://api.stripe.com/v1/payment_intents",
        data: paymentModel.toJson(),
        token: paymentStripeKey,
        contentType: "application/x-www-form-urlencoded");
    return PaymentModel.fromJson(response.data);
  }

  /// only mainn pramteers
  Future<void> initPaymentSheet(
      {required String paymentIntentClientSecret}) async {
    Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClientSecret,
        merchantDisplayName: myName,
      ),
    );
  }

  //displaay payment sheet
  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  ///doing payment intent steps
  Future<void> makeIntndentPayment(
      PaymentRequiredModel paymentRequiredModel) async {
    var paymentModel = await createIntndentPayment(paymentRequiredModel);
    await initPaymentSheet(
        paymentIntentClientSecret: paymentModel.clientSecret!);
    await displayPaymentSheet();
  }
}
