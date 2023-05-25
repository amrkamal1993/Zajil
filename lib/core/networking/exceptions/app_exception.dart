class AppException implements Exception {
  final String message;
  final int code;

  AppException(this.message, {this.code = 0});

  @override
  String toString() => 'AppException: $message';
}


class NetworkException extends AppException {
  NetworkException(String message, {int code = 0}) : super(message, code: code);
}

class ServerException extends AppException {
  ServerException(String message, {int code = 0}) : super(message, code: code);
}

class ValidationException extends AppException {
  ValidationException(String message, {int code = 0}) : super(message, code: code);
}
