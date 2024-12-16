import 'package:domain/contract/counter_repository.dart';
import 'package:domain/model/counter.dart';
import 'package:injectable/injectable.dart';

@injectable
class IncrementUseCase {
  IncrementUseCase(this._repository);

  final CounterRepository _repository;

  Counter call() {
    _repository.increment();
    return _repository.counter;
  }
}
