class ApiException implements Exception {
  final String? _message;
  final String? _prefix;

  ApiException([
    this._message,
    this._prefix,
  ]);

  @override
  String toString() {
    return "${_prefix ?? ""} ${_message ?? ""}".trim();
  }
}

// Specific exceptions
class FetchDataException extends ApiException {
  FetchDataException([super.message]);
}

class BadRequestException extends ApiException {
  BadRequestException([super.message]);
}

class UnAuthorizedException extends ApiException {
  UnAuthorizedException([super.message]);
}

class InvalidInputException extends ApiException {
  InvalidInputException([super.message]);
}

class NotFoundException extends ApiException {
  NotFoundException([super.message]);
}

class TimeoutException extends ApiException {
  TimeoutException([super.message]);
}

class ConflictException extends ApiException {
  ConflictException([super.message]);
}

class InternalServerErrorException extends ApiException {
  InternalServerErrorException([super.message]);
}

class ServiceUnavailableException extends ApiException {
  ServiceUnavailableException([super.message]);
}

class NoInternetConnectionException extends ApiException {
  NoInternetConnectionException([super.message]);
}

class ForbiddenException extends ApiException {
  ForbiddenException([super.message]);
}
