import 'package:injectable/injectable.dart';
import 'package:lanars_test/data/network/api/login_api.dart';
import 'package:lanars_test/data/responses/login_response.dart';

abstract class UserRemoteDataSource {
  Future<Login> login();
}

@Injectable(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl extends UserRemoteDataSource {
  final _loginClient = initLoginClient();

  @override
  Future<Login> login() {
    return _loginClient.getUserFeedByGroup();
  }
}
