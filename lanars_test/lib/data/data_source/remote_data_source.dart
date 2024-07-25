import 'package:injectable/injectable.dart';
import 'package:lanars_test/data/network/api.dart';
import 'package:lanars_test/data/responses/login_response.dart';

abstract class RemoteDataSource {
  Future<Login> login();
}

@Injectable(as: RemoteDataSource)
class RemoteDataSourceImpl extends RemoteDataSource {
  final AppServiceClient _appServiceClient;

  RemoteDataSourceImpl(this._appServiceClient);

  @override
  Future<Login> login() {
    return _appServiceClient.getUserFeedByGroup();
  }
}
