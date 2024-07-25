// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:lanars_test/data/data_source/main_remote_data_source.dart'
    as _i4;
import 'package:lanars_test/data/data_source/user_remote_data_source.dart'
    as _i7;
import 'package:lanars_test/data/network/client.dart' as _i3;
import 'package:lanars_test/data/repository/main_repository_impl.dart' as _i6;
import 'package:lanars_test/data/repository/user_repository_impl.dart' as _i9;
import 'package:lanars_test/domain/bloc/login_cubit/login_cubit.dart' as _i13;
import 'package:lanars_test/domain/bloc/main_page_cubit/main_page_cubit.dart'
    as _i12;
import 'package:lanars_test/domain/repository/main_repository.dart' as _i5;
import 'package:lanars_test/domain/repository/user_repository.dart' as _i8;
import 'package:lanars_test/domain/use_case/list_photographer_usecase.dart'
    as _i10;
import 'package:lanars_test/domain/use_case/login_usecase.dart' as _i11;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.DioFactory>(() => _i3.DioFactory());
    gh.factory<_i4.MainRemoteDataSource>(() => _i4.MainRemoteDataSourceImpl());
    gh.factory<_i5.MainRepository>(
        () => _i6.MainRepositoryImpl(gh<_i4.MainRemoteDataSource>()));
    gh.factory<_i7.UserRemoteDataSource>(() => _i7.UserRemoteDataSourceImpl());
    gh.factory<_i8.UserRepository>(
        () => _i9.UserRepositoryImpl(gh<_i7.UserRemoteDataSource>()));
    gh.factory<_i10.ListPhotographerUseCase>(
        () => _i10.ListPhotographerUseCase(gh<_i5.MainRepository>()));
    gh.factory<_i11.LoginUseCase>(
        () => _i11.LoginUseCase(gh<_i8.UserRepository>()));
    gh.factory<_i12.MainPageCubit>(() => _i12.MainPageCubit(
          gh<_i11.LoginUseCase>(),
          gh<_i10.ListPhotographerUseCase>(),
        ));
    gh.factory<_i13.LoginCubit>(() => _i13.LoginCubit(gh<_i11.LoginUseCase>()));
    return this;
  }
}
