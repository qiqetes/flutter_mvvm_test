import 'package:dio/dio.dart';
import 'package:mvvm_test/core/module/landmark_detail/landmark_detail.dart';
import 'landmark.dart';

class LandmarkRepository {
  Dio dio = Dio();

  Future<List<Landmark>> fetchLandmarks() async {
    final Response<Map<String, dynamic>> response = await dio.get(
        'https://tuciudaddecerca-api.proconsi.com/Categoria?idCategoriaPadre=30&idIdioma=0&idProyecto=1');

    if (response.statusCode == 200) {
      return (response.data!['fichas'] as List<dynamic>)
          .map(
              (dynamic item) => Landmark.fromJson(item as Map<String, dynamic>))
          .toList();
    } else {
      throw Exception('Failed to load landmarks');
    }
  }

  Future<LandmarkDetail> fetchLandmarkDetail(int id) async {
    final Response<Map<String, dynamic>> response = await dio.get(
        'https://tuciudaddecerca-api.proconsi.com/Ficha?idFicha=${id}&TipoFicha=F&idIdioma=0&idProyecto=1');

    if (response.statusCode == 200) {
      return LandmarkDetail.fromJson(response.data!);
    } else {
      throw Exception('Failed to load landmark detail');
    }
  }
}
