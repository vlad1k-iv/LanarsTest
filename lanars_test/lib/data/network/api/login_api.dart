import 'package:lanars_test/core/constants.dart';
import 'package:lanars_test/core/di/di.dart';
import 'package:lanars_test/data/network/client.dart';
import 'package:lanars_test/data/responses/login_response.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart' hide Headers;

part 'login_api.g.dart';

@RestApi(baseUrl: Constants.loginBaseUrl)
abstract class LoginAppServiceClient {
  factory LoginAppServiceClient(Dio dio, {String baseUrl}) =
      _LoginAppServiceClient;

  @GET('/api')
  Future<Login> getUserFeedByGroup();
}

LoginAppServiceClient initLoginClient() {
  final dio = locator.get<DioFactory>().getDio(Constants.loginBaseUrl);

  return LoginAppServiceClient(
    dio,
  );
}
