import 'package:appygo/global/player_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class DuelStandByPage extends GetWidget<DuelStandByController> {
  const DuelStandByPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DuelStandByController>(
      id: 'duel_stand_by',
      builder: (_) {
        return Scaffold(
            appBar: AppBar(title: const Text("duel")),
            body: Container(
              child: Row(
                children: [
                  Text('hp${PlayerInfo.health}'),
                  Text('level${PlayerInfo.level}'),
                  ElevatedButton(
                      onPressed: () {
                        _.damagePlayer();
                      },
                      child: const Text('Description'))
                ],
              ),
            ));
      },
    );
  }
}
