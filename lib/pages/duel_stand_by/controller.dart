import 'package:appygo/class/card/monster/monster.dart';
import 'package:appygo/class/player/player.dart';
import 'package:get/get.dart';

import 'index.dart';

class DuelStandByController extends GetxController {
  DuelStandByController();

  final state = DuelStandByState();

  void damagePlayer() {
    state.playerOne.getDamage(1000);
    update(['duel_stand_by']);
  }

  void initHand() {
    state.playerOne.hand.add(monster['fire_dragon']!);
  }

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
    initHand();
    update(['duel_stand_by']);
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
