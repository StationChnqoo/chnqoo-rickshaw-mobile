import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rickshaw/constants/mock.dart';
import 'package:rickshaw/constants/truck.dart';
import 'package:rickshaw/routes/routes.dart';
import 'package:rickshaw/widgets/my_card.dart';
import 'package:rickshaw/widgets/my_title_card.dart';

class ConfirmOrderAddress extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ConfirmOrderAddressState();
  }
}

class ConfirmOrderAddressState extends State<ConfirmOrderAddress> {
  int index = 0;
  String from = "";
  String to = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Widget buildTag(int index, String tag) => Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: [Colors.black87, Theme.of(context).primaryColor][index]),
        child: Center(
          child: Text(
            tag,
            style: TextStyle(fontSize: 12, color: Colors.white),
            strutStyle: StrutStyle(forceStrutHeight: true, height: 1.0),
          ),
        ));

    Widget buildOne(int i, String tag, String address) {
      return Container(
        child: Row(
          children: [
            buildTag(i, tag),
            SizedBox(
              width: 12,
            ),
            Expanded(
                child: GestureDetector(
              onTap: () {
                setState(() {
                  index = i;
                });
              },
              child: Container(
                height: 48,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        width: 1,
                        color: i == index
                            ? Theme.of(context).primaryColor.withOpacity(0.618)
                            : Colors.transparent)),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        // decoration: BoxDecoration(color: Colors.greenAccent),
                        child: Text(
                          '输入${['装', '卸'][i]}货地址',
                          maxLines: 1,
                          style: [
                            TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                                fontWeight: FontWeight.w500),
                            TextStyle(fontSize: 14, color: Colors.black54)
                          ][i == index ? 0 : 1],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      width: 1,
                      height: 14,
                      decoration: BoxDecoration(color: Colors.black26),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('onMorePress :${i}');
                      },
                      child: Container(
                          height: double.infinity,
                          // decoration: BoxDecoration(color: Colors.amber),
                          child: Center(
                            child: Text(
                              '地址簿',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 14),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: MyCard(
          // title: '地址',
          child: Container(
        padding: EdgeInsets.symmetric(vertical: 6),
        // decoration: BoxDecoration(
        //     color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            buildOne(0, '装', ''),
            SizedBox(
              height: 12,
            ),
            buildOne(1, '卸', ''),
          ],
        ),
      )),
    );
  }
}
