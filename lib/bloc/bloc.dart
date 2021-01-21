library bloc;

import 'package:flutter/foundation.dart';

import '../injector.dart';
import '../service/service.dart';

part 'home.dart';
part 'entry.dart';
part 'profile.dart';
part 'ide_bisnis.dart';

abstract class Bloc {
  void init();
  void dispose();
}
