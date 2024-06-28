import 'package:appygo/class/card/monster/monster.dart';
import 'package:appygo/class/card/ygo_card.dart';
import 'package:appygo/pages/guide/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class GuidePage extends GetView<GuideController> {
  const GuidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GuideController>(
      id: 'guide',
      builder: (_) {
        List<YgoCard> cardList = [];
        cardList.addAll(monster.values.map((e) => e));
        // cardList.addAll(magic.map((e) => e as YgoCard));
        return Scaffold(
          appBar: AppBar(title: const Text("guide")),
          body: SingleChildScrollView(
            child: Column(
              children: cardList
                  .map((e) => ListWidget(
                        card: e,
                      ))
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}
