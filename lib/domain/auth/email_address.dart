import 'package:dartz/dartz.dart';
import 'package:ddd_architecture/domain/core/failure/value_failure.dart';
import 'package:ddd_architecture/domain/core/utils/value_validators.dart';
import 'package:ddd_architecture/domain/core/value_object.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String emailString) {
    assert(emailString != null);
    return EmailAddress._(
      validateEmailAddress(emailString),
    );
  }

  const EmailAddress._(this.value);
}
