import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'error/unexpected_value_error.dart';
import 'failure/value_failure.dart';

@immutable
abstract class ValueObject<T> {
  Either<ValueFailure<T>, T> get value;

  const ValueObject();

  bool isValid() => value.isRight();

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  T getOrCrash() {
    return value.fold(
      (l) => throw UnexpectedValueError(l),
      // id identity - same at writing (ringht) => ringht
      id,
    );
  }

  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
