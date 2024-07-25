import 'package:flutter/material.dart';
import 'package:lanars_test/core/extensions.dart';
import 'package:lanars_test/presentation/resources/text_styles.dart';

class BaseTextField extends StatelessWidget {
  const BaseTextField({
    this.controller,
    this.onChange,
    this.isError = false,
    this.error,
    this.hintText,
    this.label,
    this.obscureText = false,
    super.key,
  });
  final TextEditingController? controller;
  final void Function(String value)? onChange;
  final bool isError;
  final String? error;
  final String? label;
  final String? hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            obscureText: obscureText,
            controller: controller,
            onChanged: onChange,
            cursorColor: context.colors.primary,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: label,
              hintText: hintText,
              labelStyle:
              TextStyle(
              color: isError ? context.colors.error : null,
                fontFamily: 'Roboto',
                fontSize: 12,
              ),
              hintStyle: TextStyles.bodyMedium.apply(
                color: context.colors.onSurfaceVariant,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  color:
                      isError ? context.colors.error : context.colors.primary,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  color:
                      isError ? context.colors.error : context.colors.outline,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  color:
                      isError ? context.colors.error : context.colors.outline,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  color:
                      isError ? context.colors.error : context.colors.outline,
                ),
              ),
            ),
          ),
          if (isError) ...[
            const SizedBox(
              height: 4,
            ),
            Text(
              error ?? '',
              style: TextStyle(
                color: context.colors.error,
              ),
            ),
          ]
        ],
      ),
    );
  }
}
