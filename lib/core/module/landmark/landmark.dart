import 'package:freezed_annotation/freezed_annotation.dart';

part 'landmark.freezed.dart';
part 'landmark.g.dart';

@freezed
class Landmark with _$Landmark {
  const factory Landmark({
    required int idFicha,
    required String nombre,
    required String descripcionCorta,
    String? fechaInicio,
    String? horaInicio,
    String? fechaFin,
    String? horaFin,
    required double latitud,
    required double longitud,
    required String urlImagen,
    int? distanciaUsuarioMetros,
    required String tipoFicha,
    required int orden,
  }) = _Landmark;

  factory Landmark.fromJson(Map<String, dynamic> json) =>
      _$LandmarkFromJson(json);
}
