import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:rickshaw/constants/get_stores.dart';
import 'package:rickshaw/widgets/my_card.dart';
import 'package:rickshaw/widgets/my_switcher.dart';
import 'package:rickshaw/widgets/my_title_card.dart';

class ConfirmOrderNote extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ConfirmOrderNoteState();
  }
}

class ConfirmOrderNoteState extends State<ConfirmOrderNote> {
  List<String> services = [
    '货物急走',
    '去物流园',
    '需要纸质回单',
    '回单照片',
    '搭把手',
    '要宽体车',
    '不走高速',
    '需新能源',
    '需搬运、费用可谈',
    '无座车'
  ];
  bool isGen = false;

  @override
  Widget build(BuildContext context) {
    GetStores stores = Get.find<GetStores>();

    // TODO: implement build
    return Container(
        margin: EdgeInsets.only(bottom: 12),
        child: MyCard(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 6),
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '跟车',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    ),
                    MySwitcher(
                        value: isGen,
                        onChanged: (value) {
                          isGen = !isGen;
                          setState(() {});
                        })
                  ],
                ),
                isGen
                    ? Container(
                        margin: EdgeInsets.only(
                          top: 4,
                        ),
                        child: Row(
                          children: [
                            Flexible(
                                flex: 2,
                                child: TextField(
                                    decoration: InputDecoration(
                                        labelText: '姓名',
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 0)))),
                            Container(
                              width: 1,
                              height: 32,
                              margin: EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(color: Colors.black12),
                            ),
                            Flexible(
                                flex: 3,
                                child: TextField(
                                    decoration: InputDecoration(
                                        labelText: '电话',
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 0))))
                          ],
                        ),
                      )
                    : Container(
                        margin: EdgeInsets.only(),
                      ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '用车时间',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                TextField(
                  maxLines: 2,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                      labelText: '其他备注信息',
                      alignLabelWithHint: true,
                      // enabledBorder: InputBorder.none,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
              ],
            ),
          ),
        ));
  }
}
