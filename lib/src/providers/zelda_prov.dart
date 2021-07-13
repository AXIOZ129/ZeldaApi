import 'package:dio/dio.dart';
import 'package:examen/src/models/zelda_model.dart';

class ZeldaProv {
  final _url = 'https://botw-compendium.herokuapp.com/api/v2';
  final _http = Dio();

  Future<List<ZeldaModel>> zelda() async {
    final _response = await _http.get(_url);
    Map<String, dynamic> data = _response.data;
    final _datos = data['data']['equipment'];

    List<ZeldaModel> linked = [];
    for (int i = 0; i < _datos.length; i++) {
      linked.add(ZeldaModel.mapJson(_datos[i]));
    }
    return linked;
  }
}
