import 'package:dartz/dartz.dart';
import 'package:ddd_architecture/domain/core/failure/value_failure.dart';
import 'package:ddd_architecture/domain/core/value_object.dart';
import 'package:uuid/uuid.dart';

class UniqueId extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  const UniqueId._(this.value);

  factory UniqueId.fromUniqueString(String uid) {
    assert(uid != null);
    return UniqueId._(right(uid));
  }

  factory UniqueId() {
    return UniqueId._(right(Uuid().v1()));
  }
}
