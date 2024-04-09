import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rickshaw/widgets/my_card.dart';

class HomeActivities extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeActivitiesState();
  }
}

class HomeActivitiesState extends State<HomeActivities> {
  List<String> names = [
    '无车加入货趴窝赚钱',
    '你有一张优惠券待领取',
    '公司搬迁 免费报价',
    '抢208元搬家券包 周末更优惠'
  ];
  List<String> values = ['订单多 收入高 空返少', '限量免费领取', '收入透明 专人对接 售后保障', '专业团队搬专享'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          ...List.generate(
              4,
              (index) => Container(
                  margin: EdgeInsets.only(bottom: 10),
                 
                  child: MyCard(
                    child: Row(
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              names[index],
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              values[index],
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black54),
                            )
                          ],
                        )),
                        CachedNetworkImage(
                          imageUrl:
                              'https://cloud.cctv3.net/mock/rickshaw-activity-${index + 1}.jpg',
                          height: 64,
                          width: 64,
                        )
                      ],
                    ),
                  )))
        ],
      ),
    );
  }
}
