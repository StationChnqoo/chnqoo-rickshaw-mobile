// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truck_size.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TruckSize _$TruckSizeFromJson(Map<String, dynamic> json) => TruckSize(
      id: json['id'] as String,
      name: json['name'] as String,
      min: (json['min'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$TruckSizeToJson(TruckSize instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'min': instance.min,
      'max': instance.max,
      'unit': instance.unit,
    };
