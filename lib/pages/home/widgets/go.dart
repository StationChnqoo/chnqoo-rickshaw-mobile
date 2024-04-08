import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeGo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeGoState();
  }
}

class HomeGoState extends State<HomeGo> {
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
                    color: Colors.white54,
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
                          '输入${['装', '卸'][i]}货地址估计',
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
      child: Card.filled(
          elevation: 1,
          child: Container(
            padding: EdgeInsets.all(12),
            // decoration: BoxDecoration(
            //     color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: [
                buildOne(0, '装', ''),
                SizedBox(
                  height: 12,
                ),
                buildOne(1, '卸', ''),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/home_go_location.png',
                            width: 16,
                            height: 16,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '常用线路',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 36,
                      child: FilledButton.icon(
                          icon: Icon(
                            CupertinoIcons.paperplane,
                            size: 18,
                          ),
                          onPressed: () {},
                          label: Text('立即用车')),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
