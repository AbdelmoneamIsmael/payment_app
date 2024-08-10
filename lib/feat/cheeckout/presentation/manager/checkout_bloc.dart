import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/feat/cheeckout/data/models/payment_required_model.dart';
import 'package:payment_app/feat/cheeckout/data/repository/checkout_repo.dart';
import 'package:payment_app/feat/cheeckout/presentation/manager/checkout_states.dart';

class CheckoutBloc extends Cubit<CheckoutStates> {
  CheckoutBloc(this.checkoutRepo) : super(CheckoutInitial());
  final CheckoutRepo checkoutRepo;

  Future<void> makePayment(
      {required PaymentRequiredModel paymentRequiredModel}) async {
    emit(CheckoutLoading());
    var result = await checkoutRepo.makePayment(
        paymentRequiredModel: paymentRequiredModel);
    result.fold(
      (l) => emit(CheckoutFailure(l.message)),
      (r) {
        emit(CheckoutSuccess());
      },
    );
  }
}
