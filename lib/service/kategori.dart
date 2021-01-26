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

  Future<ServiceResult<List<Kategori>>> getKategori() async {
    try {
      final http.Response response = await _client.get(_api.kategori)
        .timeout(const Duration(seconds: 20));

      final data = json.decode(response.body) as List;

      if (response.statusCode != 200) {
        return ServiceResult(massage: 'not success', isSucess: false);
      } else {
        return ServiceResult(
          value: data.map(
            (e) => Kategori.fromJson(e as Map)
          ).toList(),
          isSucess: true,
        );
      }
    } catch (e) {
      return ServiceResult(massage: 'not success $e', isSucess: false);
    }
  }

}