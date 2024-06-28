import 'package:appygo/class/card/ygo_card.dart';
import 'package:appygo/components/inspector.dart';
import 'package:appygo/components/overlay.dart';
import 'package:appygo/styles/ygo_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../index.dart';

class ListWidget extends GetView<GuideController> {
  final YgoCard card;
  const ListWidget({
    super.key,
    required this.card,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GuideController>(
      id: 'guide',
      builder: (_) {
        return GestureDetector(
          onTap: () {
            // Get.to(Inspector(
            //   card: item,
            // ));
            $inspector.show(child: Inspector(card: card));
          },
          child: Container(
            width: Get.width - 4,
            height: 90,
            decoration: const BoxDecoration(
              color: YgoColor.themeColor,
              border: Border.symmetric(
                vertical: BorderSide(
                  width: 2,
                ),
                horizontal: BorderSide(
                  width: 1,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Text(
                          //   item.name,
                          //   style: TextStyle(
                          //     fontSize: 20,
                          //     foreground: Paint()
                          //       ..style = PaintingStyle.stroke
                          //       ..strokeWidth = 0.1,
                          //     // ..color = item.rare.color, // 描边颜色
                          //     // background: Paint()..color = Colors.black, // 文字颜色
                          //     height: 1,
                          //   ),
                          // ),
                          Stack(
                            children: [
                              Text(
                                card.name,
                                style: TextStyle(
                                  fontSize: 20,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 2.0,
                                  height: 1,
                                ),
                              ),
                              Text(
                                card.name,
                                style: TextStyle(
                                  fontSize: 20,
                                  height: 1,
                                  color: card.rare.color,
                                ),
                              ),
                            ],
                          ),
                          // DecoratedBox(
                          //   decoration: BoxDecoration(
                          //     color: card.attr.color,
                          //     border: Border.all(
                          //       color: YgoColor.borderColor,
                          //     ),
                          //   ),
                          //   child: Text(
                          //     card.attr.value,
                          //     style: TextStyle(
                          //       color: card.attr.textColor,
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                      // Row(
                      //   children: [Text(card.kind.value)],
                      // ),
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text(
                  //         'ATK: ${card.atk.toString()} DEF: ${card.def.toString()}'),
                  //     const Text(
                  //       '更多',
                  //       style: TextStyle(
                  //         color: YgoColor.textSecondColor,
                  //         fontSize: 12,
                  //       ),
                  //     )
                  //   ],
                  // )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
