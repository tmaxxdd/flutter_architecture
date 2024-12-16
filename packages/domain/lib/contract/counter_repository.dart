import 'package:domain/model/counter.dart';

abstract class CounterRepository {
  Counter get counter;

  void increment();
}