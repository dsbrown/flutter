// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'destination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Destination _$DestinationFromJson(Map<String, dynamic> json) {
  return _Destination.fromJson(json);
}

/// @nodoc
class _$DestinationTearOff {
  const _$DestinationTearOff();

// ignore: unused_element
  _Destination call(@JsonKey(name: 'destination') String name) {
    return _Destination(
      name,
    );
  }

// ignore: unused_element
  Destination fromJson(Map<String, Object> json) {
    return Destination.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Destination = _$DestinationTearOff();

/// @nodoc
mixin _$Destination {
  @JsonKey(name: 'destination')
  String get name;

  Map<String, dynamic> toJson();
  $DestinationCopyWith<Destination> get copyWith;
}

/// @nodoc
abstract class $DestinationCopyWith<$Res> {
  factory $DestinationCopyWith(
          Destination value, $Res Function(Destination) then) =
      _$DestinationCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'destination') String name});
}

/// @nodoc
class _$DestinationCopyWithImpl<$Res> implements $DestinationCopyWith<$Res> {
  _$DestinationCopyWithImpl(this._value, this._then);

  final Destination _value;
  // ignore: unused_field
  final $Res Function(Destination) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$DestinationCopyWith<$Res>
    implements $DestinationCopyWith<$Res> {
  factory _$DestinationCopyWith(
          _Destination value, $Res Function(_Destination) then) =
      __$DestinationCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'destination') String name});
}

/// @nodoc
class __$DestinationCopyWithImpl<$Res> extends _$DestinationCopyWithImpl<$Res>
    implements _$DestinationCopyWith<$Res> {
  __$DestinationCopyWithImpl(
      _Destination _value, $Res Function(_Destination) _then)
      : super(_value, (v) => _then(v as _Destination));

  @override
  _Destination get _value => super._value as _Destination;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_Destination(
      name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Destination implements _Destination {
  const _$_Destination(@JsonKey(name: 'destination') this.name)
      : assert(name != null);

  factory _$_Destination.fromJson(Map<String, dynamic> json) =>
      _$_$_DestinationFromJson(json);

  @override
  @JsonKey(name: 'destination')
  final String name;

  @override
  String toString() {
    return 'Destination(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Destination &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$DestinationCopyWith<_Destination> get copyWith =>
      __$DestinationCopyWithImpl<_Destination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DestinationToJson(this);
  }
}

abstract class _Destination implements Destination {
  const factory _Destination(@JsonKey(name: 'destination') String name) =
      _$_Destination;

  factory _Destination.fromJson(Map<String, dynamic> json) =
      _$_Destination.fromJson;

  @override
  @JsonKey(name: 'destination')
  String get name;
  @override
  _$DestinationCopyWith<_Destination> get copyWith;
}
