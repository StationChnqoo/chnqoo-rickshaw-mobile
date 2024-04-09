import 'package:get/get.dart';
import 'package:rickshaw/pages/confirm_order/index.dart';
import 'package:rickshaw/pages/home/index.dart';

class RoutesClass {
  static String APP = "/app";
  static String HOME = "/";
  static String CONFIRM_ORDER = '/confirm_order';

  static List<GetPage> routes = [
    // GetPage(name: APP, page: () => App()),
    GetPage(name: HOME, page: () => const HomePage()),
    GetPage(name: CONFIRM_ORDER, page: () => const ConfirmOrderPage()),
  ];
}
