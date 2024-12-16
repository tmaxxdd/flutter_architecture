//@GeneratedMicroModule;RepositoryPackageModule;package:repository/init.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:domain/contract/counter_repository.dart' as _i565;
import 'package:infrastructure/local/counter_local_data_source.dart' as _i28;
import 'package:infrastructure/remote/counter_remote_data_source.dart' as _i303;
import 'package:injectable/injectable.dart' as _i526;
import 'package:repository/real/real_counter_repository.dart' as _i680;

class RepositoryPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.lazySingleton<_i565.CounterRepository>(() => _i680.RealCounterRepository(
          gh<_i28.CounterLocalDataSource>(),
          gh<_i303.CounterRemoteDataSource>(),
        ));
  }
}
