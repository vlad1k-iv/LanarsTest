import 'package:injectable/injectable.dart';
import 'package:lanars_test/data/network/api/main_page_api.dart';
import 'package:lanars_test/data/responses/photographer_response.dart';

abstract class MainRemoteDataSource {
  Future<Photographer> getListPhotographer(
    int page,
  );
}

@Injectable(as: MainRemoteDataSource)
class MainRemoteDataSourceImpl extends MainRemoteDataSource {
  final _mainPageClient = initMainPageClient();

  @override
  Future<Photographer> getListPhotographer(int page) {
    return _mainPageClient.getListPhotographer(page);
  }
}
