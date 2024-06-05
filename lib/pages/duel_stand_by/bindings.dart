import 'package:get/get.dart';

import 'controller.dart';

class DuelStandByBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DuelStandByController>(() => DuelStandByController());
  }
}
