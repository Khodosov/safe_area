// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'prefs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PrefsEventTearOff {
  const _$PrefsEventTearOff();

  _ConfigPrefs configPrefs() {
    return const _ConfigPrefs();
  }

  _ChangeTheme changeTheme({required ThemeMode themeMode}) {
    return _ChangeTheme(
      themeMode: themeMode,
    );
  }

  _ChangeLocale changeLocale({required Locale locale}) {
    return _ChangeLocale(
      locale: locale,
    );
  }
}

/// @nodoc
const $PrefsEvent = _$PrefsEventTearOff();

/// @nodoc
mixin _$PrefsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() configPrefs,
    required TResult Function(ThemeMode themeMode) changeTheme,
    required TResult Function(Locale locale) changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? configPrefs,
    TResult Function(ThemeMode themeMode)? changeTheme,
    TResult Function(Locale locale)? changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? configPrefs,
    TResult Function(ThemeMode themeMode)? changeTheme,
    TResult Function(Locale locale)? changeLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConfigPrefs value) configPrefs,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeLocale value) changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ConfigPrefs value)? configPrefs,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeLocale value)? changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConfigPrefs value)? configPrefs,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrefsEventCopyWith<$Res> {
  factory $PrefsEventCopyWith(
          PrefsEvent value, $Res Function(PrefsEvent) then) =
      _$PrefsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PrefsEventCopyWithImpl<$Res> implements $PrefsEventCopyWith<$Res> {
  _$PrefsEventCopyWithImpl(this._value, this._then);

  final PrefsEvent _value;
  // ignore: unused_field
  final $Res Function(PrefsEvent) _then;
}

/// @nodoc
abstract class _$ConfigPrefsCopyWith<$Res> {
  factory _$ConfigPrefsCopyWith(
          _ConfigPrefs value, $Res Function(_ConfigPrefs) then) =
      __$ConfigPrefsCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConfigPrefsCopyWithImpl<$Res> extends _$PrefsEventCopyWithImpl<$Res>
    implements _$ConfigPrefsCopyWith<$Res> {
  __$ConfigPrefsCopyWithImpl(
      _ConfigPrefs _value, $Res Function(_ConfigPrefs) _then)
      : super(_value, (v) => _then(v as _ConfigPrefs));

  @override
  _ConfigPrefs get _value => super._value as _ConfigPrefs;
}

/// @nodoc

class _$_ConfigPrefs implements _ConfigPrefs {
  const _$_ConfigPrefs();

  @override
  String toString() {
    return 'PrefsEvent.configPrefs()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ConfigPrefs);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() configPrefs,
    required TResult Function(ThemeMode themeMode) changeTheme,
    required TResult Function(Locale locale) changeLocale,
  }) {
    return configPrefs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? configPrefs,
    TResult Function(ThemeMode themeMode)? changeTheme,
    TResult Function(Locale locale)? changeLocale,
  }) {
    return configPrefs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? configPrefs,
    TResult Function(ThemeMode themeMode)? changeTheme,
    TResult Function(Locale locale)? changeLocale,
    required TResult orElse(),
  }) {
    if (configPrefs != null) {
      return configPrefs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConfigPrefs value) configPrefs,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeLocale value) changeLocale,
  }) {
    return configPrefs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ConfigPrefs value)? configPrefs,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeLocale value)? changeLocale,
  }) {
    return configPrefs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConfigPrefs value)? configPrefs,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) {
    if (configPrefs != null) {
      return configPrefs(this);
    }
    return orElse();
  }
}

abstract class _ConfigPrefs implements PrefsEvent {
  const factory _ConfigPrefs() = _$_ConfigPrefs;
}

/// @nodoc
abstract class _$ChangeThemeCopyWith<$Res> {
  factory _$ChangeThemeCopyWith(
          _ChangeTheme value, $Res Function(_ChangeTheme) then) =
      __$ChangeThemeCopyWithImpl<$Res>;
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$ChangeThemeCopyWithImpl<$Res> extends _$PrefsEventCopyWithImpl<$Res>
    implements _$ChangeThemeCopyWith<$Res> {
  __$ChangeThemeCopyWithImpl(
      _ChangeTheme _value, $Res Function(_ChangeTheme) _then)
      : super(_value, (v) => _then(v as _ChangeTheme));

  @override
  _ChangeTheme get _value => super._value as _ChangeTheme;

  @override
  $Res call({
    Object? themeMode = freezed,
  }) {
    return _then(_ChangeTheme(
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_ChangeTheme implements _ChangeTheme {
  const _$_ChangeTheme({required this.themeMode});

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'PrefsEvent.changeTheme(themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeTheme &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  _$ChangeThemeCopyWith<_ChangeTheme> get copyWith =>
      __$ChangeThemeCopyWithImpl<_ChangeTheme>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() configPrefs,
    required TResult Function(ThemeMode themeMode) changeTheme,
    required TResult Function(Locale locale) changeLocale,
  }) {
    return changeTheme(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? configPrefs,
    TResult Function(ThemeMode themeMode)? changeTheme,
    TResult Function(Locale locale)? changeLocale,
  }) {
    return changeTheme?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? configPrefs,
    TResult Function(ThemeMode themeMode)? changeTheme,
    TResult Function(Locale locale)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConfigPrefs value) configPrefs,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeLocale value) changeLocale,
  }) {
    return changeTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ConfigPrefs value)? configPrefs,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeLocale value)? changeLocale,
  }) {
    return changeTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConfigPrefs value)? configPrefs,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(this);
    }
    return orElse();
  }
}

abstract class _ChangeTheme implements PrefsEvent {
  const factory _ChangeTheme({required ThemeMode themeMode}) = _$_ChangeTheme;

  ThemeMode get themeMode;
  @JsonKey(ignore: true)
  _$ChangeThemeCopyWith<_ChangeTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeLocaleCopyWith<$Res> {
  factory _$ChangeLocaleCopyWith(
          _ChangeLocale value, $Res Function(_ChangeLocale) then) =
      __$ChangeLocaleCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

/// @nodoc
class __$ChangeLocaleCopyWithImpl<$Res> extends _$PrefsEventCopyWithImpl<$Res>
    implements _$ChangeLocaleCopyWith<$Res> {
  __$ChangeLocaleCopyWithImpl(
      _ChangeLocale _value, $Res Function(_ChangeLocale) _then)
      : super(_value, (v) => _then(v as _ChangeLocale));

  @override
  _ChangeLocale get _value => super._value as _ChangeLocale;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_ChangeLocale(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$_ChangeLocale implements _ChangeLocale {
  const _$_ChangeLocale({required this.locale});

  @override
  final Locale locale;

  @override
  String toString() {
    return 'PrefsEvent.changeLocale(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeLocale &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  _$ChangeLocaleCopyWith<_ChangeLocale> get copyWith =>
      __$ChangeLocaleCopyWithImpl<_ChangeLocale>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() configPrefs,
    required TResult Function(ThemeMode themeMode) changeTheme,
    required TResult Function(Locale locale) changeLocale,
  }) {
    return changeLocale(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? configPrefs,
    TResult Function(ThemeMode themeMode)? changeTheme,
    TResult Function(Locale locale)? changeLocale,
  }) {
    return changeLocale?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? configPrefs,
    TResult Function(ThemeMode themeMode)? changeTheme,
    TResult Function(Locale locale)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConfigPrefs value) configPrefs,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeLocale value) changeLocale,
  }) {
    return changeLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ConfigPrefs value)? configPrefs,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeLocale value)? changeLocale,
  }) {
    return changeLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConfigPrefs value)? configPrefs,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(this);
    }
    return orElse();
  }
}

abstract class _ChangeLocale implements PrefsEvent {
  const factory _ChangeLocale({required Locale locale}) = _$_ChangeLocale;

  Locale get locale;
  @JsonKey(ignore: true)
  _$ChangeLocaleCopyWith<_ChangeLocale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PrefsStateTearOff {
  const _$PrefsStateTearOff();

  _PrefsState call({required Locale locale, required ThemeMode themeMode}) {
    return _PrefsState(
      locale: locale,
      themeMode: themeMode,
    );
  }
}

/// @nodoc
const $PrefsState = _$PrefsStateTearOff();

/// @nodoc
mixin _$PrefsState {
  Locale get locale => throw _privateConstructorUsedError;
  ThemeMode get themeMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrefsStateCopyWith<PrefsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrefsStateCopyWith<$Res> {
  factory $PrefsStateCopyWith(
          PrefsState value, $Res Function(PrefsState) then) =
      _$PrefsStateCopyWithImpl<$Res>;
  $Res call({Locale locale, ThemeMode themeMode});
}

/// @nodoc
class _$PrefsStateCopyWithImpl<$Res> implements $PrefsStateCopyWith<$Res> {
  _$PrefsStateCopyWithImpl(this._value, this._then);

  final PrefsState _value;
  // ignore: unused_field
  final $Res Function(PrefsState) _then;

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
abstract class _$PrefsStateCopyWith<$Res> implements $PrefsStateCopyWith<$Res> {
  factory _$PrefsStateCopyWith(
          _PrefsState value, $Res Function(_PrefsState) then) =
      __$PrefsStateCopyWithImpl<$Res>;
  @override
  $Res call({Locale locale, ThemeMode themeMode});
}

/// @nodoc
class __$PrefsStateCopyWithImpl<$Res> extends _$PrefsStateCopyWithImpl<$Res>
    implements _$PrefsStateCopyWith<$Res> {
  __$PrefsStateCopyWithImpl(
      _PrefsState _value, $Res Function(_PrefsState) _then)
      : super(_value, (v) => _then(v as _PrefsState));

  @override
  _PrefsState get _value => super._value as _PrefsState;

  @override
  $Res call({
    Object? locale = freezed,
    Object? themeMode = freezed,
  }) {
    return _then(_PrefsState(
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

class _$_PrefsState implements _PrefsState {
  const _$_PrefsState({required this.locale, required this.themeMode});

  @override
  final Locale locale;
  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'PrefsState(locale: $locale, themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PrefsState &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale, themeMode);

  @JsonKey(ignore: true)
  @override
  _$PrefsStateCopyWith<_PrefsState> get copyWith =>
      __$PrefsStateCopyWithImpl<_PrefsState>(this, _$identity);
}

abstract class _PrefsState implements PrefsState {
  const factory _PrefsState(
      {required Locale locale, required ThemeMode themeMode}) = _$_PrefsState;

  @override
  Locale get locale;
  @override
  ThemeMode get themeMode;
  @override
  @JsonKey(ignore: true)
  _$PrefsStateCopyWith<_PrefsState> get copyWith =>
      throw _privateConstructorUsedError;
}
