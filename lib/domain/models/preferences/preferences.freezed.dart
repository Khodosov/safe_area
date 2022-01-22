// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PreferencesTearOff {
  const _$PreferencesTearOff();

  _Preferences call({required Locale locale, required ThemeMode themeMode}) {
    return _Preferences(
      locale: locale,
      themeMode: themeMode,
    );
  }
}

/// @nodoc
const $Preferences = _$PreferencesTearOff();

/// @nodoc
mixin _$Preferences {
  Locale get locale => throw _privateConstructorUsedError;
  ThemeMode get themeMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PreferencesCopyWith<Preferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesCopyWith<$Res> {
  factory $PreferencesCopyWith(
          Preferences value, $Res Function(Preferences) then) =
      _$PreferencesCopyWithImpl<$Res>;
  $Res call({Locale locale, ThemeMode themeMode});
}

/// @nodoc
class _$PreferencesCopyWithImpl<$Res> implements $PreferencesCopyWith<$Res> {
  _$PreferencesCopyWithImpl(this._value, this._then);

  final Preferences _value;
  // ignore: unused_field
  final $Res Function(Preferences) _then;

  @override
  $Res call({
    Object? locale = freezed,
    Object? themeMode = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
abstract class _$PreferencesCopyWith<$Res>
    implements $PreferencesCopyWith<$Res> {
  factory _$PreferencesCopyWith(
          _Preferences value, $Res Function(_Preferences) then) =
      __$PreferencesCopyWithImpl<$Res>;
  @override
  $Res call({Locale locale, ThemeMode themeMode});
}

/// @nodoc
class __$PreferencesCopyWithImpl<$Res> extends _$PreferencesCopyWithImpl<$Res>
    implements _$PreferencesCopyWith<$Res> {
  __$PreferencesCopyWithImpl(
      _Preferences _value, $Res Function(_Preferences) _then)
      : super(_value, (v) => _then(v as _Preferences));

  @override
  _Preferences get _value => super._value as _Preferences;

  @override
  $Res call({
    Object? locale = freezed,
    Object? themeMode = freezed,
  }) {
    return _then(_Preferences(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_Preferences implements _Preferences {
  const _$_Preferences({required this.locale, required this.themeMode});

  @override
  final Locale locale;
  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'Preferences(locale: $locale, themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Preferences &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale, themeMode);

  @JsonKey(ignore: true)
  @override
  _$PreferencesCopyWith<_Preferences> get copyWith =>
      __$PreferencesCopyWithImpl<_Preferences>(this, _$identity);
}

abstract class _Preferences implements Preferences {
  const factory _Preferences(
      {required Locale locale, required ThemeMode themeMode}) = _$_Preferences;

  @override
  Locale get locale;
  @override
  ThemeMode get themeMode;
  @override
  @JsonKey(ignore: true)
  _$PreferencesCopyWith<_Preferences> get copyWith =>
      throw _privateConstructorUsedError;
}
