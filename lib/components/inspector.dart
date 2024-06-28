import 'package:appygo/class/card/ygo_card.dart';
import 'package:appygo/class/card/monster/ygo_monster.dart';
import 'package:appygo/enum/card.dart';
import 'package:appygo/enum/monster.dart';
import 'package:flutter/material.dart';

class Inspector extends StatelessWidget {
  final YgoCard card;
  const Inspector({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            height: 600,
            width: 410,
            child: Container(
              decoration: BoxDecoration(
                color: card.finalType == CardFinalType.monster
                    ? (card as YgoMonsterCard).monsterType.color
                    : card.finalType.color,
                border: Border.all(
                  color: Colors.black.withOpacity(0.6),
                  width: 7,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),

                  /// 卡名
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          width: 3,
                          color: Colors.white.withOpacity(0.5),
                        ),
                        left: BorderSide(
                          width: 3,
                          color: Colors.white.withOpacity(0.5),
                        ),
                        right: BorderSide(
                          width: 3,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        bottom: BorderSide(
                          width: 3,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Text(
                                card.name,
                                style: TextStyle(
                                  fontSize: 20,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 2.0,
                                ),
                              ),
                              Text(
                                card.name,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: card.rare.color,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 26,
                            width: 26,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white,
                                  card.finalType == CardFinalType.monster
                                      ? (card as YgoMonsterCard).attr.color
                                      : card.finalType.attrColor,
                                  Colors.black
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              card.finalType == CardFinalType.monster
                                  ? (card as YgoMonsterCard).attr.value
                                  : card.finalType.value,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  /// 等级
                  _levelBuilder(card: card),
                  const SizedBox(
                    height: 5,
                  ),

                  /// 卡图
                  Container(
                    width: 340,
                    height: 340,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.black.withOpacity(0.4),
                          width: 3,
                        ),
                        left: BorderSide(
                          color: Colors.black.withOpacity(0.4),
                          width: 3,
                        ),
                        bottom: BorderSide(
                          color: Colors.black.withOpacity(0.6),
                          width: 3,
                        ),
                        right: BorderSide(
                          color: Colors.black.withOpacity(0.6),
                          width: 3,
                        ),
                      ),
                    ),
                  ),

                  /// 效果
                  Container(
                    margin: const EdgeInsets.only(
                      top: 5,
                      right: 7,
                      left: 7,
                      bottom: 5,
                    ),
                    width: 300,
                    height: 90,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 3,
                          left: 0,
                          child: Container(
                            width: 800,
                            height: 2,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border(
                                top: BorderSide(
                                  color: Colors.white.withOpacity(0.4),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 3,
                          left: 0,
                          child: Container(
                            width: 800,
                            height: 2,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white.withOpacity(0.4),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 3,
                          child: Container(
                            width: 2,
                            height: 800,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border(
                                left: BorderSide(
                                  color: Colors.white.withOpacity(0.4),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 3,
                          child: Container(
                            width: 2,
                            height: 800,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border(
                                right: BorderSide(
                                  color: Colors.white.withOpacity(0.4),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border.all(
                                color: Colors.white.withOpacity(0.3),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border.all(
                                color: Colors.white.withOpacity(0.3),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border.all(
                                color: Colors.white.withOpacity(0.3),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border.all(
                                color: Colors.white.withOpacity(0.3),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 10,
                          child: Container(
                            width: 265,
                            height: 1,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        if (card.finalType == CardFinalType.monster)
                          kindBuilder(card: (card as YgoMonsterCard))
                        // Positioned(
                        //   top: 7,
                        //   left: 9,
                        //   child: Row(
                        //     children: [
                        //       Text(
                        //         '[${card.kind.value}',
                        //         style: const TextStyle(fontSize: 12),
                        //       ),
                        //       ...card.propertyList!.asMap().entries.map(
                        //             (e) => Text(
                        //               '/${e.value}',
                        //               style: const TextStyle(fontSize: 12),
                        //             ),
                        //           ),
                        //       const Text(']'),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _levelBuilder({required YgoCard card}) {
    List<int> level = [];
    if (card.finalType == CardFinalType.monster) {
      for (var i = 0; i < (card as YgoMonsterCard).level; i++) {
        level.add(1);
      }
    }

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Row(
        children: card.finalType == CardFinalType.monster
            ? level
                .map((e) => levelBuilder(card: card as YgoMonsterCard))
                .toList()
            : [Text(card.finalType.value)],
      ),
    );
  }

  Widget levelBuilder({required YgoMonsterCard card}) {
    return Container(
      width: 24,
      height: 24,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: card.monsterType != MonsterCardType.xyzMonster
            ? Colors.amber
            : Colors.grey,
        gradient: card.monsterType != MonsterCardType.xyzMonster
            ? LinearGradient(
                colors: [Colors.amber[100]!, Colors.amber, Colors.grey[700]!],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight)
            : const LinearGradient(
                colors: [Colors.white, Colors.grey, Colors.black],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight),
      ),
    );
  }

  Widget kindBuilder({required YgoMonsterCard card}) {
    return Positioned(
      top: 7,
      left: 9,
      child: Row(
        children: [
          Text(
            '[${card.kind.value}',
            style: const TextStyle(fontSize: 12),
          ),
          ...card.propertyList!.asMap().entries.map(
                (e) => Text(
                  '/${e.value}',
                  style: const TextStyle(fontSize: 12),
                ),
              ),
          const Text(']'),
        ],
      ),
    );
  }
}
