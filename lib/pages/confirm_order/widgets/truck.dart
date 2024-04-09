import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:rickshaw/constants/get_stores.dart';
import 'package:rickshaw/widgets/my_card.dart';
import 'package:rickshaw/widgets/my_title_card.dart';

class ConfirmOrderTruck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GetStores stores = Get.find<GetStores>();
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: MyTitleCard(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CachedNetworkImage(
                imageUrl: stores.truck.value.src,
                height: 90,
                fit: BoxFit.fitWidth,
              )
            ],
          ),
        ),
        title: '车型',
      ),
    );
  }
}
