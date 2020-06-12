import 'package:dartz/dartz.dart';
import 'package:ddd_architecture/domain/core/failure/auth_value_failure.dart';
import 'package:ddd_architecture/domain/core/failure/notes_value_failure.dart';
import 'package:ddd_architecture/domain/core/failure/value_failure.dart';
import 'package:kt_dart/kt.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String emailAddress) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (!RegExp(emailRegex).hasMatch(emailAddress)) {
    return left(
      ValueFailure.auth(
        authValueFailure:
            AuthValueFailure.invalidEmail(failedValue: "invalid email"),
      ),
    );
  }

  return right(emailAddress);
}

Either<ValueFailure<String>, String> validatePassword(String password) {
  if (password.length < 6) {
    return left(
      ValueFailure.auth(
        authValueFailure: AuthValueFailure.shortPassword(),
      ),
    );
  }

  return right(password);
}

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLengh) {
  if (input.length <= maxLengh) {
    return right(input);
  }

  return left(
    ValueFailure.notes(
      notesValueFailure: NotesValueFailure.exceedingLength(
        failedValue: input,
        max: maxLengh,
      ),
    ),
  );
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  }

  return left(
    ValueFailure.notes(
      notesValueFailure: NotesValueFailure.empty(
        failedValue: input,
      ),
    ),
  );
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (!input.contains('\n')) {
    return right(input);
  }

  return left(
    ValueFailure.notes(
      notesValueFailure: NotesValueFailure.multyline(
        failedValue: input,
      ),
    ),
  );
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
    KtList<T> input, int maxLength) {
  if (input.size <= maxLength) {
    return right(input);
  }

  return left(
    ValueFailure.notes(
      notesValueFailure:
          NotesValueFailure.listToLong(failedValue: input, max: maxLength),
    ),
  );
}
