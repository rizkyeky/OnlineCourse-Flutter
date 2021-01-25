
import 'package:flutter/foundation.dart';
import 'package:connectivity/connectivity.dart';
import '../injector.dart';

part 'connection.dart';

enum ConnectionStatus { online, offline }

abstract class Service {
  void init();
  void dispose();
}

class ServiceResult<T> {
  String massage;
  T value;
  bool isSucess;

  ServiceResult({this.massage, this.value, this.isSucess});
}