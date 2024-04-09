import 'package:json_annotation/json_annotation.dart';
import 'package:rickshaw/constants/truck_size.dart';

part 'truck.g.dart';

@JsonSerializable()
class Truck {
  String id;
  String name;
  String src; // 纯货车照片
  String srcWithSize; // 含有尺寸的货车照片
  List<String> scene; // 应用场景
  List<TruckSize> size; // 尺寸
  Truck(
      {required this.srcWithSize,
      required this.id,
      required this.name,
      required this.src,
      required this.scene,
      required this.size});
  factory Truck.fromJson(Map<String, dynamic> json) => _$TruckFromJson(json);
  Map<String, dynamic> toJson() => _$TruckToJson(this);
}
