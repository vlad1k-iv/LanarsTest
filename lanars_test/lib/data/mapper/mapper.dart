import 'package:lanars_test/data/responses/login_response.dart';

extension LoginMapper on Login? {
  Login toDomain() {
    return Login(
      results: this?.results ?? [],
      info: this?.info ??
          Info(
            seed: '',
            results: 0,
            page: 0,
            version: '',
          ),
    );
  }
}
