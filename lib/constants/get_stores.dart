import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rickshaw/constants/bing_wall_paper.dart';
import 'package:rickshaw/constants/mock.dart';
import 'package:rickshaw/constants/truck.dart';
import 'package:rickshaw/constants/user.dart';

class GetStores extends GetxController {
  /** 页面刷新 */
  /** 结构简单，直接修改value */
  var homePage = 0.obs;
  var myPage = 0.obs;
  var truck = Truck.fromJson(Mock().initTrucks()[0] as Map<String, dynamic>).obs;

  /** 变量缓存 */
  /** 结构复杂，必须通过暴露出来的Set/Get接口修改 */
  final storage = GetStorage();
  var user = User.fromJson(Mock().initUser()).obs;
  var bingWallPaper = BingWallPaper.fromJson(Mock().initBingWallPaper()).obs;
  /** 系统变量 */
  /** 无需缓存，原则上是只能在Stores内部进行修改 */
  var isSignIn = false.obs;

  GetStores() {
    var userCache = storage.read('user');
    if (userCache != null) {
      //vuser.value = User.fromJson(userCache);
    }
    var bingWallPaperCache = storage.read("bingWallPaper");
    if (bingWallPaperCache != null) {
      bingWallPaper.value = BingWallPaper.fromJson(bingWallPaperCache);
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // everAll([homePage, user, bingWallPaper, isSignIn], (callback) {});
  }

  void setBingWallPaper(BingWallPaper bwp) {
    bingWallPaper.value = bwp;
    storage.write("bingWallPaper", bwp);
  }

  void setUser(User u) {
    user.value = u;
    storage.write("user", u);
  }

  void clearUser() {
    setUser(User.fromJson(Mock().initUser()));
  }
}
