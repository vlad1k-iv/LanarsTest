import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:lanars_test/core/functions.dart';
import 'package:lanars_test/domain/bloc/login_cubit/login_state.dart';
import 'package:lanars_test/domain/use_case/login_usecase.dart';

@Injectable()
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginUseCase)
      : super(
          const LoginState(),
        );

  final LoginUseCase _loginUseCase;

  void emitEmail(String value) {
    emit(
      state.copyWith(
        email: value,
      ),
    );
  }

  void emitPassword(String value) {
    emit(
      state.copyWith(
        password: value,
      ),
    );
  }

  Future<void> loginUser(VoidCallback onSuccess) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );

    final response = await _loginUseCase.execute();

    response.fold(
        (l) => emit(
              state.copyWith(
                error: l,
              ),
            ), (r) {
      emit(
        state.copyWith(
          isLoading: false,
        ),
      );
      onSuccess();
    });
  }

  bool get isButtonActive {
    return isEmalValid(state.email) && isPasswordValid(state.password);
  }
}
