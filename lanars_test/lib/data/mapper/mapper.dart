import 'package:lanars_test/data/responses/login_response.dart';
import 'package:lanars_test/data/responses/photographer_response.dart';

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

extension PhotographerMapper on Photographer? {
  Photographer toDomain() {
    return Photographer(
      page: this?.page ?? 0,
      perPage: this?.perPage ?? 0,
      photos: this?.photos ?? [],
      totalResults: this?.totalResults ?? 0,
      nextPage: this?.nextPage ?? '',
    );
  }
}
