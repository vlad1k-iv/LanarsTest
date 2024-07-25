// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainPageState {
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;
  UserModel? get userModel => throw _privateConstructorUsedError;
  List<PhotographerModel>? get photographersModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainPageStateCopyWith<MainPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageStateCopyWith<$Res> {
  factory $MainPageStateCopyWith(
          MainPageState value, $Res Function(MainPageState) then) =
      _$MainPageStateCopyWithImpl<$Res, MainPageState>;
  @useResult
  $Res call(
      {bool isLoading,
      Failure? error,
      UserModel? userModel,
      List<PhotographerModel>? photographersModel});
}

/// @nodoc
class _$MainPageStateCopyWithImpl<$Res, $Val extends MainPageState>
    implements $MainPageStateCopyWith<$Res> {
  _$MainPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? userModel = freezed,
    Object? photographersModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      photographersModel: freezed == photographersModel
          ? _value.photographersModel
          : photographersModel // ignore: cast_nullable_to_non_nullable
              as List<PhotographerModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainPageStateImplCopyWith<$Res>
    implements $MainPageStateCopyWith<$Res> {
  factory _$$MainPageStateImplCopyWith(
          _$MainPageStateImpl value, $Res Function(_$MainPageStateImpl) then) =
      __$$MainPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Failure? error,
      UserModel? userModel,
      List<PhotographerModel>? photographersModel});
}

/// @nodoc
class __$$MainPageStateImplCopyWithImpl<$Res>
    extends _$MainPageStateCopyWithImpl<$Res, _$MainPageStateImpl>
    implements _$$MainPageStateImplCopyWith<$Res> {
  __$$MainPageStateImplCopyWithImpl(
      _$MainPageStateImpl _value, $Res Function(_$MainPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? userModel = freezed,
    Object? photographersModel = freezed,
  }) {
    return _then(_$MainPageStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      photographersModel: freezed == photographersModel
          ? _value._photographersModel
          : photographersModel // ignore: cast_nullable_to_non_nullable
              as List<PhotographerModel>?,
    ));
  }
}

/// @nodoc

class _$MainPageStateImpl implements _MainPageState {
  const _$MainPageStateImpl(
      {this.isLoading = false,
      this.error,
      this.userModel,
      final List<PhotographerModel>? photographersModel})
      : _photographersModel = photographersModel;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? error;
  @override
  final UserModel? userModel;
  final List<PhotographerModel>? _photographersModel;
  @override
  List<PhotographerModel>? get photographersModel {
    final value = _photographersModel;
    if (value == null) return null;
    if (_photographersModel is EqualUnmodifiableListView)
      return _photographersModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MainPageState(isLoading: $isLoading, error: $error, userModel: $userModel, photographersModel: $photographersModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainPageStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel) &&
            const DeepCollectionEquality()
                .equals(other._photographersModel, _photographersModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error, userModel,
      const DeepCollectionEquality().hash(_photographersModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainPageStateImplCopyWith<_$MainPageStateImpl> get copyWith =>
      __$$MainPageStateImplCopyWithImpl<_$MainPageStateImpl>(this, _$identity);
}

abstract class _MainPageState implements MainPageState {
  const factory _MainPageState(
      {final bool isLoading,
      final Failure? error,
      final UserModel? userModel,
      final List<PhotographerModel>? photographersModel}) = _$MainPageStateImpl;

  @override
  bool get isLoading;
  @override
  Failure? get error;
  @override
  UserModel? get userModel;
  @override
  List<PhotographerModel>? get photographersModel;
  @override
  @JsonKey(ignore: true)
  _$$MainPageStateImplCopyWith<_$MainPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
