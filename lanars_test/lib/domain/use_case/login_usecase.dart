import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lanars_test/data/network/failure.dart';
import 'package:lanars_test/data/responses/login_response.dart';
import 'package:lanars_test/domain/repository/repository.dart';
import 'package:lanars_test/domain/use_case/base_usecase.dart';

@Injectable()
class LoginUseCase implements BaseUseCase<dynamic, Login> {
  LoginUseCase(this._repository);
  final Repository _repository;

  @override
  Future<Either<Failure, Login>> execute([dynamic value = false]) async {
    return _repository.login();
  }
}
