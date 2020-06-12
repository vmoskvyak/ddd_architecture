import 'package:dartz/dartz.dart';
import 'package:ddd_architecture/domain/core/failure/value_failure.dart';
import 'package:ddd_architecture/domain/core/utils/value_validators.dart';
import 'package:ddd_architecture/domain/core/value_object.dart';

class NoteBody extends ValueObject<String> {
  static const MAX_LENGTH = 1000;

  @override
  final Either<ValueFailure<String>, String> value;

  const NoteBody._(this.value);

  factory NoteBody(String input) {
    return NoteBody._(
      validateMaxStringLength(input, MAX_LENGTH).flatMap(
        (value) => validateStringNotEmpty(value),
      ),
    );
  }
}
