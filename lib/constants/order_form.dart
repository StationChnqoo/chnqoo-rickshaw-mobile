import 'package:json_annotation/json_annotation.dart';
import 'package:rickshaw/constants/address.dart';
import 'package:rickshaw/constants/truck.dart';

part 'order_form.g.dart';

@JsonSerializable()
class OrderForm {
  String id;
  Truck truck;
  Address from;
  Address to;
  String note;

  OrderForm({required this.id, required this.truck, required this.from, required this.to, required this.note});

  factory OrderForm.fromJson(Map<String, dynamic> json) =>
      _$OrderFormFromJson(json);
  Map<String, dynamic> toJson() => _$OrderFormToJson(this);
}