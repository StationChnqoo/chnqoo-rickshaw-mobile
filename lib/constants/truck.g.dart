// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truck.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Truck _$TruckFromJson(Map<String, dynamic> json) => Truck(
      id: json['id'] as String,
      name: json['name'] as String,
      src: json['src'] as String,
      scene: (json['scene'] as List<dynamic>).map((e) => e as String).toList(),
      size: (json['size'] as List<dynamic>)
          .map((e) => TruckSize.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TruckToJson(Truck instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'src': instance.src,
      'scene': instance.scene,
      'size': instance.size,
    };
