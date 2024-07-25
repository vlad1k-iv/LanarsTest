import 'package:flutter/material.dart';
import 'package:lanars_test/core/extensions.dart';
import 'package:lanars_test/core/navigation/route_manager.dart';

class TextStyles {
  static TextStyle titleSmall = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: RouteGenerator.mainNavigatorKey.currentContext!.colors.primary,
  );

  static TextStyle titleMedium = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 22,
    fontWeight: FontWeight.w400,
    color: RouteGenerator.mainNavigatorKey.currentContext!.colors.onBackground,
  );

  static TextStyle titleLarge = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    fontSize: 32,
    color: RouteGenerator.mainNavigatorKey.currentContext!.colors.onSurfaceVariant,
  );

  static TextStyle bodyMedium = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: RouteGenerator.mainNavigatorKey.currentContext!.colors.onSurfaceVariant,
  );

  static TextStyle bodySmall = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: RouteGenerator.mainNavigatorKey.currentContext!.colors.onSurface,
  );

  static TextStyle displaySmall = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color:
        RouteGenerator.mainNavigatorKey.currentContext!.colors.onSurface,
  );

  static TextStyle displayLarge = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: RouteGenerator.mainNavigatorKey.currentContext!.colors.onPrimary,
  );
}
