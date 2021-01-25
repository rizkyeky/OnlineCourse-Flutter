
import 'package:get_it/get_it.dart';

import 'bloc/bloc.dart';
import 'service/service.dart';

export 'dart:developer' show log;

class Injector {
  
  Injector._();
  static Injector instance = Injector._();

  final GetIt _getIt = GetIt.instance;

  Future<void> init() async {
    _getIt.registerLazySingleton(() => ConnectionService());

    _getIt.registerFactory(() => HomeBloc());
    _getIt.registerFactory(() => EntryBloc());
    _getIt.registerFactory(() => ProfileBloc());
    _getIt.registerFactory(() => IdeBisnisBloc());
    _getIt.registerFactory(() => PelatihanBloc());
    _getIt.registerFactory(() => IdeBisnisDetailBloc());
    _getIt.registerFactory(() => PelatihanDetailBloc());

    await _getIt.allReady();
  }

  void setup() {
    // getService<ConnectionService>().init();
  }

  T getBloc<T extends Bloc>() => _getIt.get<T>();
  T getService<T extends Service>() => _getIt.get<T>();

  double screenHeight;
  double screenWidth;
}

final Injector injector = Injector.instance;
