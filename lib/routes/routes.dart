import 'package:get/get.dart';
import 'package:rickshaw/pages/home/index.dart';

class RoutesClass {
  static String APP = "/app";
  static String HOME = "/";

  static List<GetPage> routes = [
    // GetPage(name: APP, page: () => App()),
    GetPage(name: HOME, page: () => const HomePage()),
  ];
}
