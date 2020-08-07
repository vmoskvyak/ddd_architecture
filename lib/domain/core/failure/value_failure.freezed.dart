// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  _Auth<T> auth<T>({AuthValueFailure<T> authValueFailure}) {
    return _Auth<T>(
      authValueFailure: authValueFailure,
    );
  }

// ignore: unused_element
  _Notes<T> notes<T>({NotesValueFailure<T> notesValueFailure}) {
    return _Notes<T>(
      notesValueFailure: notesValueFailure,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result auth(AuthValueFailure<T> authValueFailure),
    @required Result notes(NotesValueFailure<T> notesValueFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result auth(AuthValueFailure<T> authValueFailure),
    Result notes(NotesValueFailure<T> notesValueFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result auth(_Auth<T> value),
    @required Result notes(_Notes<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result auth(_Auth<T> value),
    Result notes(_Notes<T> value),
    @required Result orElse(),
  });
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

abstract class _$AuthCopyWith<T, $Res> {
  factory _$AuthCopyWith(_Auth<T> value, $Res Function(_Auth<T>) then) =
      __$AuthCopyWithImpl<T, $Res>;
  $Res call({AuthValueFailure<T> authValueFailure});

  $AuthValueFailureCopyWith<T, $Res> get authValueFailure;
}

class __$AuthCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$AuthCopyWith<T, $Res> {
  __$AuthCopyWithImpl(_Auth<T> _value, $Res Function(_Auth<T>) _then)
      : super(_value, (v) => _then(v as _Auth<T>));

  @override
  _Auth<T> get _value => super._value as _Auth<T>;

  @override
  $Res call({
    Object authValueFailure = freezed,
  }) {
    return _then(_Auth<T>(
      authValueFailure: authValueFailure == freezed
          ? _value.authValueFailure
          : authValueFailure as AuthValueFailure<T>,
    ));
  }

  @override
  $AuthValueFailureCopyWith<T, $Res> get authValueFailure {
    if (_value.authValueFailure == null) {
      return null;
    }
    return $AuthValueFailureCopyWith<T, $Res>(_value.authValueFailure, (value) {
      return _then(_value.copyWith(authValueFailure: value));
    });
  }
}

class _$_Auth<T> implements _Auth<T> {
  const _$_Auth({this.authValueFailure});

  @override
  final AuthValueFailure<T> authValueFailure;

  @override
  String toString() {
    return 'ValueFailure<$T>.auth(authValueFailure: $authValueFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Auth<T> &&
            (identical(other.authValueFailure, authValueFailure) ||
                const DeepCollectionEquality()
                    .equals(other.authValueFailure, authValueFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authValueFailure);

  @override
  _$AuthCopyWith<T, _Auth<T>> get copyWith =>
      __$AuthCopyWithImpl<T, _Auth<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result auth(AuthValueFailure<T> authValueFailure),
    @required Result notes(NotesValueFailure<T> notesValueFailure),
  }) {
    assert(auth != null);
    assert(notes != null);
    return auth(authValueFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result auth(AuthValueFailure<T> authValueFailure),
    Result notes(NotesValueFailure<T> notesValueFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (auth != null) {
      return auth(authValueFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result auth(_Auth<T> value),
    @required Result notes(_Notes<T> value),
  }) {
    assert(auth != null);
    assert(notes != null);
    return auth(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result auth(_Auth<T> value),
    Result notes(_Notes<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class _Auth<T> implements ValueFailure<T> {
  const factory _Auth({AuthValueFailure<T> authValueFailure}) = _$_Auth<T>;

  AuthValueFailure<T> get authValueFailure;
  _$AuthCopyWith<T, _Auth<T>> get copyWith;
}

abstract class _$NotesCopyWith<T, $Res> {
  factory _$NotesCopyWith(_Notes<T> value, $Res Function(_Notes<T>) then) =
      __$NotesCopyWithImpl<T, $Res>;
  $Res call({NotesValueFailure<T> notesValueFailure});

  $NotesValueFailureCopyWith<T, $Res> get notesValueFailure;
}

class __$NotesCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$NotesCopyWith<T, $Res> {
  __$NotesCopyWithImpl(_Notes<T> _value, $Res Function(_Notes<T>) _then)
      : super(_value, (v) => _then(v as _Notes<T>));

  @override
  _Notes<T> get _value => super._value as _Notes<T>;

  @override
  $Res call({
    Object notesValueFailure = freezed,
  }) {
    return _then(_Notes<T>(
      notesValueFailure: notesValueFailure == freezed
          ? _value.notesValueFailure
          : notesValueFailure as NotesValueFailure<T>,
    ));
  }

  @override
  $NotesValueFailureCopyWith<T, $Res> get notesValueFailure {
    if (_value.notesValueFailure == null) {
      return null;
    }
    return $NotesValueFailureCopyWith<T, $Res>(_value.notesValueFailure,
        (value) {
      return _then(_value.copyWith(notesValueFailure: value));
    });
  }
}

class _$_Notes<T> implements _Notes<T> {
  const _$_Notes({this.notesValueFailure});

  @override
  final NotesValueFailure<T> notesValueFailure;

  @override
  String toString() {
    return 'ValueFailure<$T>.notes(notesValueFailure: $notesValueFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Notes<T> &&
            (identical(other.notesValueFailure, notesValueFailure) ||
                const DeepCollectionEquality()
                    .equals(other.notesValueFailure, notesValueFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notesValueFailure);

  @override
  _$NotesCopyWith<T, _Notes<T>> get copyWith =>
      __$NotesCopyWithImpl<T, _Notes<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result auth(AuthValueFailure<T> authValueFailure),
    @required Result notes(NotesValueFailure<T> notesValueFailure),
  }) {
    assert(auth != null);
    assert(notes != null);
    return notes(notesValueFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result auth(AuthValueFailure<T> authValueFailure),
    Result notes(NotesValueFailure<T> notesValueFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notes != null) {
      return notes(notesValueFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result auth(_Auth<T> value),
    @required Result notes(_Notes<T> value),
  }) {
    assert(auth != null);
    assert(notes != null);
    return notes(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result auth(_Auth<T> value),
    Result notes(_Notes<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notes != null) {
      return notes(this);
    }
    return orElse();
  }
}

abstract class _Notes<T> implements ValueFailure<T> {
  const factory _Notes({NotesValueFailure<T> notesValueFailure}) = _$_Notes<T>;

  NotesValueFailure<T> get notesValueFailure;
  _$NotesCopyWith<T, _Notes<T>> get copyWith;
}
