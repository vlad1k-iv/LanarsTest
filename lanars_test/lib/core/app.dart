import 'package:flutter/material.dart';
import 'package:lanars_test/core/navigation/route_manager.dart';
import 'package:lanars_test/core/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightColorScheme,
      darkTheme: darkColorScheme,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.loginRoute,
      navigatorKey: RouteGenerator.mainNavigatorKey,
    );
  }
}
