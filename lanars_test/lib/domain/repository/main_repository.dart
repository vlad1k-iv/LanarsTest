import 'package:dartz/dartz.dart';
import 'package:lanars_test/data/network/failure.dart';
import 'package:lanars_test/data/responses/photographer_response.dart';

abstract class MainRepository {
  Future<Either<Failure, Photographer>> getListPhotographer(
    int page,
  );
}
