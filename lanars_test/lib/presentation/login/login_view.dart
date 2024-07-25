import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lanars_test/core/extensions.dart';
import 'package:lanars_test/core/functions.dart';
import 'package:lanars_test/core/navigation/route_manager.dart';
import 'package:lanars_test/domain/bloc/login_cubit/login_cubit.dart';
import 'package:lanars_test/domain/bloc/login_cubit/login_state.dart';
import 'package:lanars_test/presentation/resources/text_styles.dart';
import 'package:lanars_test/presentation/widgets/base_text_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        unFocus(context);
      },
      child: Scaffold(
        body: BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
          final cubit = context.read<LoginCubit>();

          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                16,
                128,
                16,
                16,
              ),
              child: AbsorbPointer(
                absorbing: state.isLoading,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign in',
                        style: TextStyles.titleLarge,
                      ),
                      const SizedBox(
                        height: 72,
                      ),
                      Opacity(
                        opacity: state.isLoading ? 0.4 : 1,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 80,
                              child: BaseTextField(
                                onChange: cubit.emitEmail,
                                isError: state.email.isNotEmpty &&
                                    !isEmalValid(state.email),
                                label: 'Email',
                                error: 'Email is incorrect',
                                hintText: 'Enter your email',
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            SizedBox(
                              height: 80,
                              child: BaseTextField(
                                obscureText: true,
                                isError: state.password.isNotEmpty &&
                                    !isPasswordValid(state.password),
                                error: 'Password is incorrect',
                                onChange: cubit.emitPassword,
                                label: 'Password',
                                hintText: 'Enter your password',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 44,
                      ),
                      SizedBox(
                        height: 40,
                        width: double.maxFinite,
                        child: ElevatedButton(
                          onPressed: cubit.isButtonActive
                              ? () async {
                                  unFocus(context);
                                  cubit.loginUser(
                                    () {
                                      Navigator.pushNamedAndRemoveUntil(
                                        context,
                                        Routes.mainPageRoute,
                                        (route) => false,
                                      );
                                    },
                                  );
                                }
                              : null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: context.colors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                30.0,
                              ),
                            ),
                          ),
                          child: state.isLoading
                              ? SizedBox(
                                  height: 24,
                                  width: 24,
                                  child: CircularProgressIndicator(
                                    color: context.colors.onSecondary,
                                    strokeWidth: 3,
                                  ),
                                )
                              : Text(
                                  'Log in',
                                  style: TextStyles.displayLarge,
                                ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
