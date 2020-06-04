import 'package:dartz/dartz.dart';
import 'package:ddd_architecture/domain/core/failure/value_failure.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String emailAddress) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (!RegExp(emailRegex).hasMatch(emailAddress)) {
    return left(ValueFailure.invalidEmail(failedValue: "email is invalid"));
  }

  return right(emailAddress);
}

Either<ValueFailure<String>, String> validatePassword(String password) {
  if (password.length < 6) {
    return left(ValueFailure.shortPassword());
  }

  return right(password);
}