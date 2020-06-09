import 'package:ddd_architecture/domain/core/unique_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required UniqueId uniqueId,
  }) = _User;
}