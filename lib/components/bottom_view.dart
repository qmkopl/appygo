import 'package:appygo/class/card/monster/monster_card.dart';
import 'package:appygo/styles/ygo_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomView extends StatelessWidget {
  final MonsterCard card;
  const BottomView({super.key, required this.card});
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    Text(
                      card.name,
                      style: TextStyle(
                        fontSize: 20,
                        color: card.rare.color,
                        height: 1,
                      ),
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: card.attr.color,
                        border: Border.all(
                          color: YgoColor.borderColor,
                        ),
                      ),
                      child: Text(
                        card.attr.value,
                        style: TextStyle(
                          color: card.attr.textColor,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [Text(card.kind.value)],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('ATK: ${card.atk.toString()} DEF: ${card.def.toString()}'),
                const Text(
                  '更多',
                  style: TextStyle(
                    color: YgoColor.textSecondColor,
                    fontSize: 12,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
