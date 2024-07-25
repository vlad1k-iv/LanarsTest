import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lanars_test/core/di/di.dart';
import 'package:lanars_test/domain/bloc/login_cubit/login_cubit.dart';
import 'package:lanars_test/presentation/login/login_view.dart';
import 'package:lanars_test/presentation/main_page/main_page.dart';

class Routes {
  static const String loginRoute = '/login';
  static const String mainPageRoute = '/mainPage';
}

class RouteGenerator {
  static final GlobalKey<NavigatorState> mainNavigatorKey =
      GlobalKey<NavigatorState>();

  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.loginRoute:
        return MaterialPageRoute<LoginView>(
          builder: (_) => BlocProvider<LoginCubit>(
              create: (context) => locator.get<LoginCubit>(),
              child: const LoginView()),
        );
      case Routes.mainPageRoute:
        return MaterialPageRoute<MainPage>(
          builder: (_) => const MainPage(),
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute<Widget>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('No Route'),
        ),
        body: const Center(
          child: Text('Route not found'),
        ),
      ),
    );
  }
}
