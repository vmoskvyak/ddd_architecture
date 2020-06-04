import 'package:dartz/dartz.dart';
import 'package:ddd_architecture/domain/core/failure/value_failure.dart';
import 'package:ddd_architecture/domain/core/utils/value_validators.dart';
import 'package:ddd_architecture/domain/core/value_object.dart';

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password(String passwordString) {
    assert(passwordString != null);

    return Password._(
      validatePassword(passwordString),
    );
  }

  Password._(this.value);
}
