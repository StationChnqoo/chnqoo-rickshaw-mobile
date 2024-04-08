import 'package:flutter/material.dart';

class HomeFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: Text(
        '京ICP备04000001号-2',
        style: TextStyle(color: Colors.black54, fontSize: 14),
      ),
    );
  }
}
