abstract class FailuerClass {
  final String message;

  FailuerClass(this.message);
}

class ServerException extends FailuerClass {
  ServerException(super.message);
}
