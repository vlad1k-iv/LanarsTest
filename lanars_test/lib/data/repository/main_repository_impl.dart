import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lanars_test/data/data_source/main_remote_data_source.dart';
import 'package:lanars_test/data/network/error_handler.dart';
import 'package:lanars_test/data/network/failure.dart';
import 'package:lanars_test/data/responses/photographer_response.dart';
import 'package:lanars_test/domain/repository/main_repository.dart';

@Injectable(as: MainRepository)
class MainRepositoryImpl extends MainRepository {
  MainRepositoryImpl(this._mainRemoteDataSource);

  final MainRemoteDataSource _mainRemoteDataSource;

  @override
  Future<Either<Failure, Photographer>> getListPhotographer(
    int page,
  ) async {
    try {
      final response = await _mainRemoteDataSource.getListPhotographer(page);

      return Right(response);
    } catch (error) {
      return Left(ErrorHandler.handle(error).failure);
    }
  }
}
