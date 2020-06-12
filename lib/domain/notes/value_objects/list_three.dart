import 'package:dartz/dartz.dart';
import 'package:ddd_architecture/domain/core/failure/value_failure.dart';
import 'package:ddd_architecture/domain/core/utils/value_validators.dart';
import 'package:ddd_architecture/domain/core/value_object.dart';
import 'package:kt_dart/collection.dart';

class List3<T> extends ValueObject<KtList<T>> {
  static const MAX_LIST_LENGTH = 3;

  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  List3._(this.value);

  factory List3(KtList<T> input) {
    return List3._(
      validateMaxListLength(input, MAX_LIST_LENGTH),
    );
  }

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == MAX_LIST_LENGTH;
  }
}
