import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lanars_test/data/network/failure.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool isLoading,
    Failure? error,
    @Default('') String email,
    @Default('') String password,
  }) = _LoginState;
}
