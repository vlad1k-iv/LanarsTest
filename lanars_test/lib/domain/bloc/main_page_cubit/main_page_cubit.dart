import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:lanars_test/data/responses/photographer_response.dart';
import 'package:lanars_test/domain/bloc/main_page_cubit/main_page_state.dart';
import 'package:lanars_test/domain/model/models.dart';
import 'package:lanars_test/domain/use_case/list_photographer_usecase.dart';
import 'package:lanars_test/domain/use_case/login_usecase.dart';

@Injectable()
class MainPageCubit extends Cubit<MainPageState> {
  MainPageCubit(
    this._loginUseCase,
    this._listPhotographerUseCase,
  ) : super(
          const MainPageState(),
        ) {
    getListPhotographer();
  }

  final LoginUseCase _loginUseCase;
  final ListPhotographerUseCase _listPhotographerUseCase;

  Future<void> _loginUser() async {
    final response = await _loginUseCase.execute();

    response.fold(
        (l) => emit(
              state.copyWith(
                error: l,
              ),
            ), (r) {
      if (r.results.isNotEmpty) {
        emit(
          state.copyWith(
            userModel: UserModel(
              avatar: r.results[0].picture.large,
              userNmae: '${r.results[0].name.first} ${r.results[0].name.last}',
              email: r.results[0].email,
            ),
          ),
        );
      }
    });
  }

  Future<void> getListPhotographer({bool isReload = false}) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );

    if (!isReload) {
      await _loginUser();
    }

    final response = await _listPhotographerUseCase.execute(50);

    response.fold(
      (l) => emit(
        state.copyWith(
          error: l,
          isLoading: false,
        ),
      ),
      (r) => emit(
        state.copyWith(
          photographersModel: _groupItemsByFirstLetter(r.photos),
          isLoading: false,
        ),
      ),
    );
  }

  List<PhotographerModel> _groupItemsByFirstLetter(List<Photo> items) {
    items.sort(
      (a, b) => (a.photographer ?? '').compareTo(b.photographer ?? ''),
    );
    final groupedItems = <PhotographerModel>[];
    String? currentLetter;

    for (var item in items) {
      final firstLetter = item.photographer?[0].toUpperCase();

      if (currentLetter != firstLetter) {
        currentLetter = firstLetter;
        groupedItems.add(
          PhotographerModel(
            image: item.src?.original ?? '',
            name: item.photographer ?? '',
            description: item.photographerId?.toString() ??
                'Indulge in the bold and hoppy goodness of our black',
            isHeader: true,
          ),
        );
      } else {
        groupedItems.add(
          PhotographerModel(
            image: item.src?.original ?? '',
            name: item.photographer ?? '',
            description: item.photographerId?.toString() ??
                'Indulge in the bold and hoppy goodness of our black',
            isHeader: false,
          ),
        );
      }
    }

    return groupedItems;
  }
}
