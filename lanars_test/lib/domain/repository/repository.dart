import 'package:dartz/dartz.dart';
import 'package:lanars_test/data/network/failure.dart';
import 'package:lanars_test/data/responses/login_response.dart';

abstract class Repository {
  Future<Either<Failure, Login>> login();
}
