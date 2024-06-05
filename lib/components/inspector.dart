import 'package:appygo/class/card/monster/monster_card.dart';
import 'package:appygo/enum/card.dart';
import 'package:appygo/enum/monster.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Inspector extends StatelessWidget {
  final MonsterCard card;
  const Inspector({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    List<int> level = [];
    for (var i = 0; i < card.level; i++) {
      level.add(1);
    }
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 140,
            horizontal: 40,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: card.type == CardType.mainMonster
                  ? card.monsterType.color
                  : card.type.color,
              border: Border.all(
                color: Colors.black.withOpacity(0.6),
                width: 7,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// 卡名
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                    left: 7,
                    right: 7,
                    bottom: 5,
                  ),
                  height: 40,
                  width: 9999,
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
                            color: card.attr.color,
                            gradient: LinearGradient(
                              colors: [
                                Colors.white,
                                card.attr.color,
                                Colors.black
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            card.attr.value,
                            style: TextStyle(
                              color: card.attr.textColor,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                /// 等级
                Container(
                  margin: const EdgeInsets.only(
                    top: 0,
                    right: 12,
                    left: 12,
                    bottom: 0,
                  ),
                  child: Row(
                    mainAxisAlignment:
                        card.monsterType != MonsterType.xyzMonster
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.start,
                    children:
                        level.map((e) => levelBuilder(card: card)).toList(),
                  ),
                ),

                /// 卡图
                Container(
                  margin: const EdgeInsets.only(
                    top: 5,
                    right: 15,
                    left: 15,
                    bottom: 5,
                  ),
                  height: 300,
                  width: 300,
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
                      Positioned(
                        top: 7,
                        left: 9,
                        child: Row(
                          children: [
                            Text(
                              '[${card.kind.value}',
                              style: const TextStyle(fontSize: 12),
                            ),
                            const Text(']')
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget levelBuilder({required MonsterCard card}) {
    return Container(
      width: 18.5,
      height: 18.5,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: card.monsterType != MonsterType.xyzMonster
            ? Colors.amber
            : Colors.grey,
        gradient: card.monsterType != MonsterType.xyzMonster
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
}
