import 'package:domain/contract/counter_repository.dart';
import 'package:domain/model/counter.dart';
import 'package:infrastructure/local/counter_local_data_source.dart';
import 'package:infrastructure/remote/counter_remote_data_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CounterRepository)
class RealCounterRepository implements CounterRepository {
  RealCounterRepository(
    this._localDataSource,
    this._remoteDataSource,
  ) {
    _counter = Counter(_localDataSource.getCounter() ?? 0);
  }

  final CounterLocalDataSource _localDataSource;
  final CounterRemoteDataSource _remoteDataSource;

  Counter _counter = const Counter();

  @override
  Counter get counter => _counter;

  @override
  Future<void> increment() async {
    final newValue = _counter.value + 1;
    _localDataSource.setCounter(newValue);
    _remoteDataSource.setCounter(newValue);
    _counter = Counter(newValue);
  }
}
