import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rickshaw/constants/config.dart';
import 'package:rickshaw/constants/get_stores.dart';
import 'package:rickshaw/pages/home/widgets/toolbar.dart';
import 'package:rickshaw/pages/home/widgets/trucks.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  ScrollController? swiper;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  GetStores stores = Get.find<GetStores>();

  onMinePress() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight), // 设置高度为0
        child: HomeToolBar(),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: Config.PAGE_PADDING),
        decoration: BoxDecoration(
            // color: CupertinoColors.systemBrown.color.withOpacity(0.09)
            ),
        // padding: EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            HomeTrucks()
          ],
        )),
      ),
    );
  }

  initGetStores() {}

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initGetStores();
  }
}
