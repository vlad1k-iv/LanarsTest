import 'package:flutter/material.dart';
import 'package:lanars_test/core/navigation/route_manager.dart';
import 'package:lanars_test/core/theme.dart';
import 'package:lanars_test/data/network/api.dart';

class MyApp extends StatefulWidget {
  const MyApp({required this.apiClient, super.key});

  final AppServiceClient apiClient;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    // widget.apiClient.getUserFeedByGroup().then((value) {
    //   print(
    //     value.results[0].name,
    //   );
    // });
  }

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
