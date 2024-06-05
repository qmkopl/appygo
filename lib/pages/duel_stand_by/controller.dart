import 'package:appygo/global/player_info.dart';
import 'package:get/get.dart';

import 'index.dart';

class DuelStandByController extends GetxController {
  DuelStandByController();

  final state = DuelStandByState();
  var health = 0.obs;
  var level = 0.obs;

  void initPlayer() async {
    // if (PlayerInfo.health < 0) {
    PlayerInfo('name', 8000, 1);
    health.value = 8000;
    level.value = 1;
    // }
    print(PlayerInfo.health);
  }

  void damagePlayer() {
    health.value = PlayerInfo.damaged(200);
    update(['duel_stand_by']);
  }

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    initPlayer();
    super.onInit();
  }

  /// 在 onInit() 之后调用 1 帧。这是进入的理想场所
  @override
  void onReady() {
    super.onReady();
  }

  /// 在 [onDelete] 方法之前调用。
  @override
  void onClose() {
    super.onClose();
  }

  /// dispose 释放内存
  @override
  void dispose() {
    super.dispose();
  }
}
