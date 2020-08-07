// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'notes_value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NotesValueFailureTearOff {
  const _$NotesValueFailureTearOff();

// ignore: unused_element
  ExceedingLength<T> exceedingLength<T>(
      {@required T failedValue, @required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  Empty<T> empty<T>({@required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  Multyline<T> multyline<T>({@required T failedValue}) {
    return Multyline<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ListToLong<T> listToLong<T>({@required T failedValue, @required int max}) {
    return ListToLong<T>(
      failedValue: failedValue,
      max: max,
    );
  }
}

// ignore: unused_element
const $NotesValueFailure = _$NotesValueFailureTearOff();

mixin _$NotesValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multyline(T failedValue),
    @required Result listToLong(T failedValue, int max),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multyline(T failedValue),
    Result listToLong(T failedValue, int max),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multyline(Multyline<T> value),
    @required Result listToLong(ListToLong<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multyline(Multyline<T> value),
    Result listToLong(ListToLong<T> value),
    @required Result orElse(),
  });

  $NotesValueFailureCopyWith<T, NotesValueFailure<T>> get copyWith;
}

abstract class $NotesValueFailureCopyWith<T, $Res> {
  factory $NotesValueFailureCopyWith(NotesValueFailure<T> value,
          $Res Function(NotesValueFailure<T>) then) =
      _$NotesValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class _$NotesValueFailureCopyWithImpl<T, $Res>
    implements $NotesValueFailureCopyWith<T, $Res> {
  _$NotesValueFailureCopyWithImpl(this._value, this._then);

  final NotesValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(NotesValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

abstract class $ExceedingLengthCopyWith<T, $Res>
    implements $NotesValueFailureCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$NotesValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

class _$ExceedingLength<T>
    with DiagnosticableTreeMixin
    implements ExceedingLength<T> {
  const _$ExceedingLength({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotesValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NotesValueFailure<$T>.exceedingLength'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multyline(T failedValue),
    @required Result listToLong(T failedValue, int max),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multyline != null);
    assert(listToLong != null);
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multyline(T failedValue),
    Result listToLong(T failedValue, int max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multyline(Multyline<T> value),
    @required Result listToLong(ListToLong<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multyline != null);
    assert(listToLong != null);
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multyline(Multyline<T> value),
    Result listToLong(ListToLong<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements NotesValueFailure<T> {
  const factory ExceedingLength({@required T failedValue, @required int max}) =
      _$ExceedingLength<T>;

  @override
  T get failedValue;
  int get max;
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith;
}

abstract class $EmptyCopyWith<T, $Res>
    implements $NotesValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$EmptyCopyWithImpl<T, $Res>
    extends _$NotesValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$Empty<T> with DiagnosticableTreeMixin implements Empty<T> {
  const _$Empty({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotesValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotesValueFailure<$T>.empty'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multyline(T failedValue),
    @required Result listToLong(T failedValue, int max),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multyline != null);
    assert(listToLong != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multyline(T failedValue),
    Result listToLong(T failedValue, int max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multyline(Multyline<T> value),
    @required Result listToLong(ListToLong<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multyline != null);
    assert(listToLong != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multyline(Multyline<T> value),
    Result listToLong(ListToLong<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements NotesValueFailure<T> {
  const factory Empty({@required T failedValue}) = _$Empty<T>;

  @override
  T get failedValue;
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith;
}

abstract class $MultylineCopyWith<T, $Res>
    implements $NotesValueFailureCopyWith<T, $Res> {
  factory $MultylineCopyWith(
          Multyline<T> value, $Res Function(Multyline<T>) then) =
      _$MultylineCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$MultylineCopyWithImpl<T, $Res>
    extends _$NotesValueFailureCopyWithImpl<T, $Res>
    implements $MultylineCopyWith<T, $Res> {
  _$MultylineCopyWithImpl(
      Multyline<T> _value, $Res Function(Multyline<T>) _then)
      : super(_value, (v) => _then(v as Multyline<T>));

  @override
  Multyline<T> get _value => super._value as Multyline<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Multyline<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$Multyline<T> with DiagnosticableTreeMixin implements Multyline<T> {
  const _$Multyline({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotesValueFailure<$T>.multyline(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotesValueFailure<$T>.multyline'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Multyline<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $MultylineCopyWith<T, Multyline<T>> get copyWith =>
      _$MultylineCopyWithImpl<T, Multyline<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multyline(T failedValue),
    @required Result listToLong(T failedValue, int max),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multyline != null);
    assert(listToLong != null);
    return multyline(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multyline(T failedValue),
    Result listToLong(T failedValue, int max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multyline != null) {
      return multyline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multyline(Multyline<T> value),
    @required Result listToLong(ListToLong<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multyline != null);
    assert(listToLong != null);
    return multyline(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multyline(Multyline<T> value),
    Result listToLong(ListToLong<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multyline != null) {
      return multyline(this);
    }
    return orElse();
  }
}

abstract class Multyline<T> implements NotesValueFailure<T> {
  const factory Multyline({@required T failedValue}) = _$Multyline<T>;

  @override
  T get failedValue;
  @override
  $MultylineCopyWith<T, Multyline<T>> get copyWith;
}

abstract class $ListToLongCopyWith<T, $Res>
    implements $NotesValueFailureCopyWith<T, $Res> {
  factory $ListToLongCopyWith(
          ListToLong<T> value, $Res Function(ListToLong<T>) then) =
      _$ListToLongCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

class _$ListToLongCopyWithImpl<T, $Res>
    extends _$NotesValueFailureCopyWithImpl<T, $Res>
    implements $ListToLongCopyWith<T, $Res> {
  _$ListToLongCopyWithImpl(
      ListToLong<T> _value, $Res Function(ListToLong<T>) _then)
      : super(_value, (v) => _then(v as ListToLong<T>));

  @override
  ListToLong<T> get _value => super._value as ListToLong<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ListToLong<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

class _$ListToLong<T> with DiagnosticableTreeMixin implements ListToLong<T> {
  const _$ListToLong({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotesValueFailure<$T>.listToLong(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotesValueFailure<$T>.listToLong'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListToLong<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $ListToLongCopyWith<T, ListToLong<T>> get copyWith =>
      _$ListToLongCopyWithImpl<T, ListToLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multyline(T failedValue),
    @required Result listToLong(T failedValue, int max),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multyline != null);
    assert(listToLong != null);
    return listToLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multyline(T failedValue),
    Result listToLong(T failedValue, int max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listToLong != null) {
      return listToLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multyline(Multyline<T> value),
    @required Result listToLong(ListToLong<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multyline != null);
    assert(listToLong != null);
    return listToLong(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multyline(Multyline<T> value),
    Result listToLong(ListToLong<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listToLong != null) {
      return listToLong(this);
    }
    return orElse();
  }
}

abstract class ListToLong<T> implements NotesValueFailure<T> {
  const factory ListToLong({@required T failedValue, @required int max}) =
      _$ListToLong<T>;

  @override
  T get failedValue;
  int get max;
  @override
  $ListToLongCopyWith<T, ListToLong<T>> get copyWith;
}
