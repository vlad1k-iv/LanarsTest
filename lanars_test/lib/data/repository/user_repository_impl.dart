import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lanars_test/data/data_source/user_remote_data_source.dart';
import 'package:lanars_test/data/mapper/mapper.dart';
import 'package:lanars_test/data/network/error_handler.dart';
import 'package:lanars_test/data/network/failure.dart';
import 'package:lanars_test/data/responses/login_response.dart';
import 'package:lanars_test/domain/repository/user_repository.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl(this._remoteDataSource);

  final UserRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, Login>> login() async {
    try {
      final response = await _remoteDataSource.login();

      return Right(response.toDomain());
    } catch (error) {
      return Left(ErrorHandler.handle(error).failure);
    }
  }
}
