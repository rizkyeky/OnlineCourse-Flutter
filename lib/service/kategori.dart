part of 'service.dart';

class KategoriService implements Service {
  
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void init() {
    // TODO: implement init
  }

  final http.Client _client = http.Client();
  final API _api = API();

  Future<ServiceResult<Map<String, List>>> getKategori() async {
    try {
      final http.Response response = await _client.get(_api.kategori)
        .timeout(const Duration(seconds: 20));

      final data = json.decode(response.body) as List;

      if (response.statusCode != 200) {
        return ServiceResult(massage: 'not success');
      } else {
        final listOfPelatihan = [];
        final listOfIdeBisnis = [];
        for (final e in data) {
          if (e['JENIS'] == 'PELATIHAN') {
            listOfPelatihan.add(e);
          } else {
            listOfIdeBisnis.add(e);
          }
        }
        return ServiceResult(value: {
          'PELATIHAN': listOfPelatihan,
          'IDE BISNIS': listOfIdeBisnis,
        });
      }
    } catch (e) {
      return ServiceResult(massage: 'not success');
    }
  }

}