import 'package:flutter/material.dart';
import 'package:flutter_architecture/main.config.dart';
import 'package:injectable/injectable.dart';
import 'package:presentation/page.dart';
import 'package:util/init.dart';

@InjectableInit()
Future<void> configureDependencies() async => await getIt.init();

Future<void> main() async {
  await configureDependencies();
  runApp(const MyApp());
}
