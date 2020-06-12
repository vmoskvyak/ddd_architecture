import 'package:dartz/dartz.dart';
import 'package:ddd_architecture/domain/core/failure/value_failure.dart';
import 'package:ddd_architecture/domain/core/utils/value_validators.dart';
import 'package:ddd_architecture/domain/core/value_object.dart';

class TodoName extends ValueObject<String> {
  static const MAX_LENGTH = 30;

  @override
  final Either<ValueFailure<String>, String> value;

  const TodoName._(this.value);

  factory TodoName(String input) {
    return TodoName._(
      validateMaxStringLength(input, MAX_LENGTH).flatMap(
        (value) => validateStringNotEmpty(value).flatMap(
          (value) => validateSingleLine(value),
        ),
      ),
    );
  }
}
