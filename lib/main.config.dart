// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/init.module.dart' as _i103;
import 'package:get_it/get_it.dart' as _i174;
import 'package:infrastructure/init.module.dart' as _i171;
import 'package:injectable/injectable.dart' as _i526;
import 'package:presentation/init.module.dart' as _i198;
import 'package:repository/init.module.dart' as _i374;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await _i374.RepositoryPackageModule().init(gh);
    await _i171.InfrastructurePackageModule().init(gh);
    await _i103.DomainPackageModule().init(gh);
    await _i198.PresentationPackageModule().init(gh);
    return this;
  }
}
