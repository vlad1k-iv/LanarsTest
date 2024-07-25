import 'package:dartz/dartz.dart';
import 'package:lanars_test/data/network/failure.dart';
import 'package:lanars_test/data/responses/login_response.dart';

abstract class UserRepository {
  Future<Either<Failure, Login>> login();

}
