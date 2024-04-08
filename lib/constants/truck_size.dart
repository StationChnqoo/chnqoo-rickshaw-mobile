import 'package:json_annotation/json_annotation.dart';

part 'truck_size.g.dart';

@JsonSerializable()
class TruckSize {
  String id;
  String name;
  double min;
  double max;
  String unit;
  TruckSize(
      {required this.id,
      required this.name,
      required this.min,
      required this.max,
      required this.unit});
  factory TruckSize.fromJson(Map<String, dynamic> json) =>
      _$TruckSizeFromJson(json);
  Map<String, dynamic> toJson() => _$TruckSizeToJson(this);
}
