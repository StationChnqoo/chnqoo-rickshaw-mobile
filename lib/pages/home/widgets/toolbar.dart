import 'package:flutter/material.dart';
import 'package:rickshaw/constants/config.dart';
import 'package:rickshaw/widgets/my_image.dart';

class HomeToolBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeToolBarState();
  }
}

class HomeToolBarState extends State<HomeToolBar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black54.withOpacity(0.1),
            spreadRadius: 1,
            offset: Offset(0, 1), // 改变阴影的位置
          ),
        ],
      ),
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 6,
          left: Config.PAGE_PADDING,
          right: Config.PAGE_PADDING,
          bottom: 6),
      child: Row(
        children: [
          MyImage(
              imageUrl: 'https://blog.cctv3.net/i.jpg',
              width: 36.0,
              height: 36.0,
              borderRadius: BorderRadius.circular(18.0))
        ],
      ),
    );
  }
}
