import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_value_failure.freezed.dart';

@freezed
abstract class AuthValueFailure<T> with _$AuthValueFailure<T> {
  const factory AuthValueFailure.invalidEmail({@required T failedValue}) =
      InvalidEmail<T>;
  const factory AuthValueFailure.shortPassword() = ShortPassword<T>;
}
