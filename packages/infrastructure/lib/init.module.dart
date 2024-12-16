//@GeneratedMicroModule;InfrastructurePackageModule;package:infrastructure/init.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:infrastructure/dependencies/register_module.dart' as _i17;
import 'package:infrastructure/local/counter_local_data_source.dart' as _i28;
import 'package:infrastructure/remote/counter_remote_data_source.dart' as _i303;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

class InfrastructurePackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    final registerModule = _$RegisterModule();
    gh.factoryAsync<_i460.SharedPreferences>(() => registerModule.prefs);
    gh.singleton<_i303.CounterRemoteDataSource>(
        () => _i303.CounterRemoteDataSource());
    gh.singletonAsync<_i28.CounterLocalDataSource>(() async =>
        _i28.CounterLocalDataSource(
            sharedPreferences: await gh.getAsync<_i460.SharedPreferences>()));
  }
}

class _$RegisterModule extends _i17.RegisterModule {}
