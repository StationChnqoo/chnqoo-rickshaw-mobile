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
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            MyCard(
                child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    stores.truck.value.name,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  // Text(
                  //   stores.truck.value.name,
                  //   style: TextStyle(
                  //     color: Colors.black54,
                  //     fontSize: 14,
                  //   ),
                  // )
                  // Expanded(
                  //     child: Container(
                  //   // child: Column(
                  //   //   children: [
                  //   //     ...stores.truck.value.size
                  //   //         .asMap()
                  //   //         .entries
                  //   //         .map((e) => Container(
                  //   //               child: Row(
                  //   //                 children: [
                  //   //                   Text(
                  //   //                     e.value.name,
                  //   //                     style: TextStyle(
                  //   //                         color: Colors.black87, fontSize: 14),
                  //   //                   ),
                  //   //                   Text(
                  //   //                     '${e.value.min}~${e.value.max} ${e.value.unit}',
                  //   //                     style: TextStyle(
                  //   //                         color: Colors.black54, fontSize: 12),
                  //   //                   )
                  //   //                 ],
                  //   //               ),
                  //   //             ))
                  //   //   ],
                  //   // ),
                  // )),
                ],
              ),
            )),
            Positioned(
                right: 0,
                top: -45,
                child: CachedNetworkImage(
                  imageUrl: stores.truck.value.src,
                  height: 90,
                  fit: BoxFit.fitWidth,
                ))
          ],
        ));
  }
}
