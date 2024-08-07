class PaymentRequiredModel {
  final String amount;
  final String currency;

  PaymentRequiredModel({required this.amount, required this.currency});

  Map<String, dynamic> toJson() => {
        'amount': amount,
        'currency': currency,
      };
}
