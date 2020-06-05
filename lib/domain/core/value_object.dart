
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'failure/value_failure.dart';

@immutable
abstract class ValueObject<T> {
  Either<ValueFailure<T>, String> get value;
  
  const ValueObject();

  bool isValid() => value.isRight();

  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}