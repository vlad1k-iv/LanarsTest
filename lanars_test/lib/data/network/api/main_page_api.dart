import 'package:lanars_test/core/constants.dart';
import 'package:lanars_test/core/di/di.dart';
import 'package:lanars_test/data/network/client.dart';
import 'package:lanars_test/data/responses/photographer_response.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart' hide Headers;

part 'main_page_api.g.dart';

@RestApi(baseUrl: Constants.pexelsBaseUrl)
abstract class MainPageAppServiceClient {
  factory MainPageAppServiceClient(Dio dio, {String baseUrl}) =
      _MainPageAppServiceClient;

  @Headers(<String, dynamic>{
    'Authorization': Constants.pexelsApiKey,
  })
  @GET('/v1/curated')
  Future<Photographer> getListPhotographer(@Query('per_page') int page);
}

MainPageAppServiceClient initMainPageClient() {
  final dio = locator.get<DioFactory>().getDio(Constants.pexelsBaseUrl);

  return MainPageAppServiceClient(
    dio,
  );
}
