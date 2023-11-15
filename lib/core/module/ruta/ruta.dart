import 'package:freezed_annotation/freezed_annotation.dart';
part 'ruta.freezed.dart';

@freezed
class Ruta with _$Ruta {
  const factory Ruta({
    required int idRuta,
    required String nombre,
    String? descripcion,
  }) = _Ruta;

  factory Ruta.fromJson(Map<String, dynamic> json) => _$RutaFromJson(json);
}
