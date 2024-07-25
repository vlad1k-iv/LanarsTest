import 'package:flutter/material.dart';
import 'package:lanars_test/core/extensions.dart';
import 'package:lanars_test/core/functions.dart';
import 'package:lanars_test/core/navigation/route_manager.dart';
import 'package:lanars_test/presentation/resources/text_styles.dart';
import 'package:lanars_test/presentation/widgets/base_text_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        unFocus(context);
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              16,
              128,
              16,
              16,
            ),
            child: AbsorbPointer(
              absorbing: isLoading,
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
                      opacity: isLoading ? 0.4 : 1,
                      child: const Column(
                        children: [
                          SizedBox(
                            height: 80,
                            child: BaseTextField(
                              label: 'Email',
                              hintText: 'Enter your email',
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          SizedBox(
                            height: 80,
                            child: BaseTextField(
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
                        onPressed: () {
                          setState(() {
                            isLoading = true;
                          });
                          Future.delayed(const Duration(seconds: 1), () {
                            setState(() {
                              isLoading = false;
                            });
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              Routes.mainPageRoute,
                              (route) => false,
                            );
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: context.colors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              30.0,
                            ),
                          ),
                        ),
                        child: isLoading
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
        ),
      ),
    );
  }
}
