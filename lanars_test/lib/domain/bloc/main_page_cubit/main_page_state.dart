
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lanars_test/data/network/failure.dart';
import 'package:lanars_test/domain/model/models.dart';

part 'main_page_state.freezed.dart';

@freezed
class MainPageState with _$MainPageState {
  const factory MainPageState({
    @Default(false) bool isLoading,
    Failure? error,
    UserModel? userModel,
    List<PhotographerModel>? photographersModel,
  }) = _MainPageState;
}
