// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

// import 'package:business_course/main.dart';
import 'package:business_course/service/service.dart';
import 'package:flutter/foundation.dart';

Future<void> main() async {
  final KategoriService _service = KategoriService();
  final result = await _service.getKategori();
  debugPrint(result.massage);
}

abstract class Model<T> {
  final String id;
  T message;
  Model(this.id);
}

class User<T> implements Model<T> {
  @override
  final String id;
  @override
  T message;

  String name;
  String email;

  User(this.id);
}
