// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderForm _$OrderFormFromJson(Map<String, dynamic> json) => OrderForm(
      id: json['id'] as String,
      truck: Truck.fromJson(json['truck'] as Map<String, dynamic>),
      from: Address.fromJson(json['from'] as Map<String, dynamic>),
      to: Address.fromJson(json['to'] as Map<String, dynamic>),
      note: json['note'] as String,
    );

Map<String, dynamic> _$OrderFormToJson(OrderForm instance) => <String, dynamic>{
      'id': instance.id,
      'truck': instance.truck,
      'from': instance.from,
      'to': instance.to,
      'note': instance.note,
    };
