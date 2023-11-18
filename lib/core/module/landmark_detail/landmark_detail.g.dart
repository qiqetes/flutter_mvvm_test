// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'landmark_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LandmarkDetailsImpl _$$LandmarkDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$LandmarkDetailsImpl(
      idDetalle: json['idDetalle'] as int?,
      idFicha: json['idFicha'] as int,
      nombre: json['nombre'] as String,
      descripcionCorta: json['descripcionCorta'] as String,
      descripcion: _descriptionConverter(json['descripcion'] as String?),
      fechaInicio: json['fechaInicio'] as String?,
      horaInicio: json['horaInicio'] as String?,
      fechaFin: json['fechaFin'] as String?,
      horaFin: json['horaFin'] as String?,
      idIdioma: json['idIdioma'] as int?,
      idImagen: json['idImagen'] as int?,
      latitud: (json['latitud'] as num).toDouble(),
      longitud: (json['longitud'] as num).toDouble(),
      direccion: json['direccion'] as String?,
      email: json['email'] as String?,
      telefono: json['telefono'] as String?,
      importancia: json['importancia'] as int?,
      urlImagen: json['urlImagen'] as String,
      media: json['media'] == null
          ? null
          : Media.fromJson(json['media'] as Map<String, dynamic>),
      rutas: (json['rutas'] as List<dynamic>?)
          ?.map((e) => Ruta.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LandmarkDetailsImplToJson(
        _$LandmarkDetailsImpl instance) =>
    <String, dynamic>{
      'idDetalle': instance.idDetalle,
      'idFicha': instance.idFicha,
      'nombre': instance.nombre,
      'descripcionCorta': instance.descripcionCorta,
      'descripcion': instance.descripcion,
      'fechaInicio': instance.fechaInicio,
      'horaInicio': instance.horaInicio,
      'fechaFin': instance.fechaFin,
      'horaFin': instance.horaFin,
      'idIdioma': instance.idIdioma,
      'idImagen': instance.idImagen,
      'latitud': instance.latitud,
      'longitud': instance.longitud,
      'direccion': instance.direccion,
      'email': instance.email,
      'telefono': instance.telefono,
      'importancia': instance.importancia,
      'urlImagen': instance.urlImagen,
      'media': instance.media,
      'rutas': instance.rutas,
    };
