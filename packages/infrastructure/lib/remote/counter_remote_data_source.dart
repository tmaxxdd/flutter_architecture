import 'package:injectable/injectable.dart';

@singleton
class CounterRemoteDataSource {
  int? getCounter() => null;

  Future<void> setCounter(int counter) async {
    // no-op
  }
}