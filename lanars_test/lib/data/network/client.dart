import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:lanars_test/core/constants.dart';

@LazySingleton()
class DioFactory {
  DioFactory();

  Dio getDio() {
    final dio = Dio();

    dio.options = BaseOptions(
      baseUrl: Constants.loginBaseUrl,
    );

    return dio;
  }
}
