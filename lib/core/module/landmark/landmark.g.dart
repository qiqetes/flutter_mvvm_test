// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'landmark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LandmarkImpl _$$LandmarkImplFromJson(Map<String, dynamic> json) =>
    _$LandmarkImpl(
      idFicha: json['idFicha'] as int,
      nombre: json['nombre'] as String,
      descripcionCorta: json['descripcionCorta'] as String,
      fechaInicio: json['fechaInicio'] as String?,
      horaInicio: json['horaInicio'] as String?,
      fechaFin: json['fechaFin'] as String?,
      horaFin: json['horaFin'] as String?,
      latitud: (json['latitud'] as num).toDouble(),
      longitud: (json['longitud'] as num).toDouble(),
      urlImagen: json['urlImagen'] as String,
      distanciaUsuarioMetros: json['distanciaUsuarioMetros'] as int?,
      tipoFicha: json['tipoFicha'] as String,
      orden: json['orden'] as int,
    );

Map<String, dynamic> _$$LandmarkImplToJson(_$LandmarkImpl instance) =>
    <String, dynamic>{
      'idFicha': instance.idFicha,
      'nombre': instance.nombre,
      'descripcionCorta': instance.descripcionCorta,
      'fechaInicio': instance.fechaInicio,
      'horaInicio': instance.horaInicio,
      'fechaFin': instance.fechaFin,
      'horaFin': instance.horaFin,
      'latitud': instance.latitud,
      'longitud': instance.longitud,
      'urlImagen': instance.urlImagen,
      'distanciaUsuarioMetros': instance.distanciaUsuarioMetros,
      'tipoFicha': instance.tipoFicha,
      'orden': instance.orden,
    };
