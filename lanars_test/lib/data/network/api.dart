import 'package:dio/dio.dart';
import 'package:lanars_test/core/constants.dart';
import 'package:lanars_test/core/di/di.dart';
import 'package:lanars_test/data/network/client.dart';
import 'package:lanars_test/data/responses/login_response.dart';
import 'package:retrofit/http.dart';

part 'api.g.dart';

@RestApi(baseUrl: Constants.loginBaseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @GET('/api')
  Future<Login> getUserFeedByGroup();
}

AppServiceClient initClient() {
  final dio = locator.get<DioFactory>().getDio();

  return AppServiceClient(
    dio,
  );
}
