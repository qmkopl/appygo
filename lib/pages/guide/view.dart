import 'package:appygo/class/card/monster/monster.dart';
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
        return Scaffold(
          appBar: AppBar(title: const Text("guide")),
          body: SingleChildScrollView(
            child: Column(
              children: monster
                  .map((e) => ListWidget(
                        item: e,
                      ))
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}
