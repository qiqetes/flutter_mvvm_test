import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mvvm_test/core/module/landmark/landmark.dart';

void main() {
  test('Test Landmark JSON serialization', () {
    const jsonString = '''
    {
      "idFicha": 35,
      "nombre": "Colegiata de San Isidoro",
      "descripcionCorta": "La Colegiata de San Isidoro es un edificio románico de los siglos XI y XII.",
      "fechaInicio": "2014-02-01T00:00:00",
      "horaInicio": null,
      "fechaFin": "2014-02-28T00:00:00",
      "horaFin": null,
      "latitud": 42.600239,
      "longitud": -5.5710446,
      "urlImagen": "http://www.leondecerca.com/imagenes/imagenes/3558998.jpg",
      "distanciaUsuarioMetros": null,
      "tipoFicha": "F",
      "orden": 1
    }
    ''';

    final jsonMap = jsonDecode(jsonString) as Map<String, dynamic>;
    final landmark = Landmark.fromJson(jsonMap);

    expect(landmark.idFicha, 35);
    expect(landmark.nombre, 'Colegiata de San Isidoro');
    expect(landmark.descripcionCorta,
        'La Colegiata de San Isidoro es un edificio románico de los siglos XI y XII.');
    expect(landmark.fechaInicio, '2014-02-01T00:00:00');
    expect(landmark.horaInicio, null);
    expect(landmark.fechaFin, '2014-02-28T00:00:00');
    expect(landmark.horaFin, null);
    expect(landmark.latitud, 42.600239);
    expect(landmark.longitud, -5.5710446);
    expect(landmark.urlImagen,
        'http://www.leondecerca.com/imagenes/imagenes/3558998.jpg');
    expect(landmark.distanciaUsuarioMetros, null);
    expect(landmark.tipoFicha, 'F');
    expect(landmark.orden, 1);

    final jsonStringFromLandmark = jsonEncode(landmark.toJson());
    final jsonMapFromLandmark =
        jsonDecode(jsonStringFromLandmark) as Map<String, dynamic>;

    expect(jsonMap, jsonMapFromLandmark);
  });
  test('Test Landmark JSON serialization', () {
    const jsonString = '''
    {
      "idFicha": 136,
      "nombre": "San Marcos de León",
      "descripcionCorta": "San Marcos es un edificio representativo del siglo XVI.",
      "fechaInicio": null,
      "horaInicio": null,
      "fechaFin": null,
      "horaFin": null,
      "latitud": 42.6019606,
      "longitud": -5.582241,
      "urlImagen": "http://www.leondecerca.com/imagenes/imagenes/2909933.jpg",
      "distanciaUsuarioMetros": null,
      "tipoFicha": "F",
      "orden": 6
    }
    ''';

    final jsonMap = jsonDecode(jsonString) as Map<String, dynamic>;
    final landmark = Landmark.fromJson(jsonMap);

    expect(landmark.idFicha, 136);
    expect(landmark.nombre, 'San Marcos de León');
    expect(landmark.fechaFin, null);

    final jsonStringFromLandmark = jsonEncode(landmark.toJson());
    final jsonMapFromLandmark =
        jsonDecode(jsonStringFromLandmark) as Map<String, dynamic>;

    expect(jsonMap, jsonMapFromLandmark);
  });
}
