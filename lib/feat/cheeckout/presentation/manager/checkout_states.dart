abstract class CheckoutStates {}

class CheckoutInitial extends CheckoutStates {}

class CheckoutLoading extends CheckoutStates {}

class CheckoutSuccess extends CheckoutStates {}

class CheckoutFailure extends CheckoutStates {
  final String error;

  CheckoutFailure(this.error);
}
