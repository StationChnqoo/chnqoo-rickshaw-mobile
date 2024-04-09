import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rickshaw/constants/config.dart';
import 'package:rickshaw/constants/get_stores.dart';
import 'package:rickshaw/pages/confirm_order/widgets/address.dart';
import 'package:rickshaw/pages/confirm_order/widgets/note.dart';
import 'package:rickshaw/pages/confirm_order/widgets/truck.dart';
import 'package:rickshaw/widgets/my_toolbar.dart';

class ConfirmOrderPage extends StatefulWidget {
  const ConfirmOrderPage({super.key});

  @override
  State<ConfirmOrderPage> createState() => ConfirmOrderPageState();
}

class ConfirmOrderPageState extends State<ConfirmOrderPage> {
  ScrollController? swiper;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  GetStores stores = Get.find<GetStores>();

  onMinePress() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: MyToolBar(
          title: '确认订单',
          onBackPress: () {
            Get.back();
          },
        ),
      ),
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: Config.PAGE_PADDING),
        decoration: BoxDecoration(
            color: CupertinoColors.systemBrown.color.withOpacity(0.09)),
        // padding: EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            ConfirmOrderTruck(),
            ConfirmOrderAddress(),
            ConfirmOrderNote(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                FilledButton(onPressed: () {}, child: Text('确认下单'))
              ],
            )
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
