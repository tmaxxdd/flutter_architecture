//@GeneratedMicroModule;DomainPackageModule;package:domain/init.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:domain/contract/counter_repository.dart' as _i565;
import 'package:domain/logic/increment_use_case.dart' as _i776;
import 'package:injectable/injectable.dart' as _i526;

class DomainPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i776.IncrementUseCase>(
        () => _i776.IncrementUseCase(gh<_i565.CounterRepository>()));
  }
}
