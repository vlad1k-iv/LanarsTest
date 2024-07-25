import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lanars_test/data/network/failure.dart';
import 'package:lanars_test/data/responses/photographer_response.dart';
import 'package:lanars_test/domain/repository/main_repository.dart';
import 'package:lanars_test/domain/use_case/base_usecase.dart';

@Injectable()
class ListPhotographerUseCase implements BaseUseCase<int, Photographer> {
  ListPhotographerUseCase(this._repository);
  final MainRepository _repository;

  @override
  Future<Either<Failure, Photographer>> execute(
    int page,
  ) async {
    return _repository.getListPhotographer(page);
  }
}
