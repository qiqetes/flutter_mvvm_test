// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ruta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ruta _$RutaFromJson(Map<String, dynamic> json) {
  return _Ruta.fromJson(json);
}

/// @nodoc
mixin _$Ruta {
  int get idRuta => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;
  String? get descripcion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RutaCopyWith<Ruta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RutaCopyWith<$Res> {
  factory $RutaCopyWith(Ruta value, $Res Function(Ruta) then) =
      _$RutaCopyWithImpl<$Res, Ruta>;
  @useResult
  $Res call({int idRuta, String nombre, String? descripcion});
}

/// @nodoc
class _$RutaCopyWithImpl<$Res, $Val extends Ruta>
    implements $RutaCopyWith<$Res> {
  _$RutaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idRuta = null,
    Object? nombre = null,
    Object? descripcion = freezed,
  }) {
    return _then(_value.copyWith(
      idRuta: null == idRuta
          ? _value.idRuta
          : idRuta // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: freezed == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RutaImplCopyWith<$Res> implements $RutaCopyWith<$Res> {
  factory _$$RutaImplCopyWith(
          _$RutaImpl value, $Res Function(_$RutaImpl) then) =
      __$$RutaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int idRuta, String nombre, String? descripcion});
}

/// @nodoc
class __$$RutaImplCopyWithImpl<$Res>
    extends _$RutaCopyWithImpl<$Res, _$RutaImpl>
    implements _$$RutaImplCopyWith<$Res> {
  __$$RutaImplCopyWithImpl(_$RutaImpl _value, $Res Function(_$RutaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idRuta = null,
    Object? nombre = null,
    Object? descripcion = freezed,
  }) {
    return _then(_$RutaImpl(
      idRuta: null == idRuta
          ? _value.idRuta
          : idRuta // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: freezed == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RutaImpl implements _Ruta {
  const _$RutaImpl(
      {required this.idRuta, required this.nombre, this.descripcion});

  factory _$RutaImpl.fromJson(Map<String, dynamic> json) =>
      _$$RutaImplFromJson(json);

  @override
  final int idRuta;
  @override
  final String nombre;
  @override
  final String? descripcion;

  @override
  String toString() {
    return 'Ruta(idRuta: $idRuta, nombre: $nombre, descripcion: $descripcion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RutaImpl &&
            (identical(other.idRuta, idRuta) || other.idRuta == idRuta) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idRuta, nombre, descripcion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RutaImplCopyWith<_$RutaImpl> get copyWith =>
      __$$RutaImplCopyWithImpl<_$RutaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RutaImplToJson(
      this,
    );
  }
}

abstract class _Ruta implements Ruta {
  const factory _Ruta(
      {required final int idRuta,
      required final String nombre,
      final String? descripcion}) = _$RutaImpl;

  factory _Ruta.fromJson(Map<String, dynamic> json) = _$RutaImpl.fromJson;

  @override
  int get idRuta;
  @override
  String get nombre;
  @override
  String? get descripcion;
  @override
  @JsonKey(ignore: true)
  _$$RutaImplCopyWith<_$RutaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
