
import 'package:get_it/get_it.dart';
import 'bloc/bloc.dart';
import 'service/service.dart';

class Injector {
  final GetIt _getIt = GetIt.instance;

  Future<void> init() async {
    _getIt.registerLazySingleton(() => ConnectionService());

    _getIt.registerFactory(() => HomeBloc());
    _getIt.registerFactory(() => EntryBloc());

    await _getIt.allReady();
  }

  void setup() {
    getService<ConnectionService>().init();
  }

  T getBloc<T extends Bloc>() => _getIt.get<T>();
  T getService<T extends Service>() => _getIt.get<T>();
  
} 

Injector injector = Injector();