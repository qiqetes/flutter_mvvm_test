import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mvvm_test/core/module/landmark/landmark.dart';
import 'package:mvvm_test/core/module/landmark_detail/media/media.dart';
import 'package:mvvm_test/core/module/landmark_detail/ruta/ruta.dart';

part 'landmark_detail.freezed.dart';
part 'landmark_detail.g.dart';

@freezed
class LandmarkDetail with _$LandmarkDetail {
  const factory LandmarkDetail({
    int? idDetalle,
    required int idFicha,
    required String nombre,
    required String descripcionCorta,
    // ignore: invalid_annotation_target
    @JsonKey(name: "descripcion", fromJson: _descriptionConverter)
    String? descripcion,
    String? fechaInicio,
    String? horaInicio,
    String? fechaFin,
    String? horaFin,
    int? idIdioma,
    int? idImagen,
    required double latitud,
    required double longitud,
    String? direccion,
    String? email,
    String? telefono,
    int? importancia,
    required String urlImagen,
    Media? media,
    List<Ruta>? rutas,
    // required List<Promociones> promociones,
    // required List<SubFicha> subFichas,
  }) = _LandmarkDetails;

  factory LandmarkDetail.fromLandmark(Landmark landmark) {
    return LandmarkDetail(
      idFicha: landmark.idFicha,
      nombre: landmark.nombre,
      descripcionCorta: landmark.descripcionCorta,
      latitud: landmark.latitud,
      longitud: landmark.longitud,
      urlImagen: landmark.urlImagen,
    );
  }

  factory LandmarkDetail.fromJson(Map<String, dynamic> json) =>
      _$LandmarkDetailFromJson(json);
}

String? _descriptionConverter(String? raw) {
  if (raw == null || raw.isEmpty) return null;

  return raw.replaceAll("<br />", "\n");
}
