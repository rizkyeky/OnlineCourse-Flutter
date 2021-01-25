part of 'service.dart';

class API {

  final String _homeBase = 'sheetdb.io';
  final String _subBase = 'api/v1/y06kd2tyjoxaf';

  Uri get kategori => Uri.https(_homeBase, _subBase);
}