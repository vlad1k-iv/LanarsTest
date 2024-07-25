import 'package:flutter/material.dart';
import 'package:lanars_test/core/app.dart';
import 'package:lanars_test/core/di/di.dart';
import 'package:lanars_test/data/network/api.dart';

void main() {
  initDi();

  runApp(MyApp(
    apiClient: initClient(),
  ));
}
