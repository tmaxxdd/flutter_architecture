import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class CounterLocalDataSource {
  final SharedPreferences sharedPreferences;

  CounterLocalDataSource({required this.sharedPreferences});

  int? getCounter() {
    return sharedPreferences.getInt('counter') ?? 0;
  }

  Future<bool> setCounter(int counter) async {
    await sharedPreferences.reload();
    return await sharedPreferences.setInt('counter', counter);
  }
}